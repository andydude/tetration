var _RETURN_AS_TEXT = 1;
var _RETURN_AS_DOM  = 0;
var _POST           = 0;
var _GET            = 1;

var _REPLACE_AS_DOM  = 0;
var _REPLACE_AS_HTML = 1;
var _REPLACE_AS_VAR  = 2;
var _REPLACE_AS_IMG  = 3;
var _VAR_RESULT      = '';

var _CACHE           = 0;
var _NO_CACHE        = 1;

function DataRequestor() {
    var self = this;  // workaround for scope errors: see http://www.crockford.com/javascript/private.html

    /**
     *  Create XMLHttpRequest object: handles branching between
     *  versions of IE and other browers.  Inital version from:
     *  http://jibbering.com/2002/4/httprequest.html (GREAT resource)
     *
     *  later version adapted from:
     *  http://jpspan.sourceforge.net/wiki/doku.php?id=javascript:xmlhttprequest:behaviour:httpheaders
     *
     *  @return     the XMLHttpRequest object
     */
    this.getXMLHTTP = function() {
        var xmlHTTP = null;

        try {
            xmlHTTP = new XMLHttpRequest();
        } catch (e) {
            try {
                xmlHTTP = new ActiveXObject("Msxml2.XMLHTTP")
            } catch(e) {
                var success = false;
                var MSXML_XMLHTTP_PROGIDS = new Array(
                    'Microsoft.XMLHTTP',
                    'MSXML2.XMLHTTP',
                    'MSXML2.XMLHTTP.5.0',
                    'MSXML2.XMLHTTP.4.0',
                    'MSXML2.XMLHTTP.3.0'
                );
                for (var i=0;i < MSXML_XMLHTTP_PROGIDS.length && !success; i++) {
                    try {
                        xmlHTTP = new ActiveXObject(MSXML_XMLHTTP_PROGIDS[i]);
                        success = true;
                    } catch (e) {
                        xmlHTTP = null;
                    }
                }
            }

        }
        self._XML_REQ = xmlHTTP;
        return self._XML_REQ;
    }


    /**
     *   Starts the request for a url.  XMLHttpRequest will call
     *   the default callback method when the request is complete
     *   @param     url     the URL to request: absolute or relative will work
     *   @param     return  optional arg: defaults to _RETURN_AS_TEXT.  if set to _RETURN_AS_DOM, will return a DOM object instead of a string
     *   @return    true
     */
    this.getURL = function(url,async) {
        // DID THE USER WANT A DOM OBJECT, OR JUST THE TEXT OF THE REQUESTED DOCUMENT?
            if (arguments[2] == _RETURN_AS_DOM) {
                self.returnType = _RETURN_AS_DOM;
            } else {
                self.returnType = _RETURN_AS_TEXT;  // DEFAULT
            }

		// CLEAR OUT ANY CURRENTLY ACTIVE REQUESTS
            if (typeof self._XML_REQ.abort == "function" && self._XML_REQ.readyState!=0) { // Opera can't abort().
                self._XML_REQ.abort();
            }

        // SET THE STATE CHANGE FUNCTION
            self._XML_REQ.onreadystatechange = self.callback;

        // GENERATE THE POST AND GET STRINGS
            var requestType = "GET";
            var getUrlString = "?";
            for (var i in self.argArray[_GET]) {
                getUrlString += i + "=" + self.argArray[_GET][i] + "&";
            }
            var postUrlString = "";
            for (i in self.argArray[_POST]) {
                postUrlString += i + "=" + self.argArray[_POST][i] + "&";
            }
            if (postUrlString != "") {
                requestType = "POST";  // Only POST if we have post variables
            }

        // MAKE THE REQUEST

            self._XML_REQ.open(requestType, url + getUrlString, async);
            if (typeof self._XML_REQ.setRequestHeader == "function") { // Opera can't setRequestHeader()
                if (self.returnType == _RETURN_AS_DOM && typeof self._XML_REQ.overrideMimeType == "function") {
                    self._XML_REQ.overrideMimeType('text/xml');  // Make sure we get XML if we're trying to process as DOM
                }
                self._XML_REQ.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
            }
            self._XML_REQ.send(postUrlString);

       return true;
    }

    /**
     *  The default callback method: this is called when the XMLHttpRequest object
     *  changes state.
     *  - If the readystate == 4 (done) and the status == 200 (OK), then
     *    the request was successful, and we take some action:
     *      - If the user has set an object to replace, we check to see if we recieved plaintext (default)
     *        or if the text should be run through eval first.
     *
     *          - If we recieved plaintext, we simply replace the relevant object on the page with the
     *            text we received.
     *
     *          - If we recieved text to evaluate, we call eval() on it, and then replace the object
     *            wholesale with _DOM_OBJ (which resulted from the eval) using replaceChild() on
     *            self.objToReplace's parentNode.
     *
     *      - If the user has set an onLoad method, we call it.  If they requested a DOM object, we
     *        pass it responseXML with blank text nodes stripped (to normalize between mozilla and
     *        IE.  If not, we pass them back plaintext.
     *
     *  - Else if the readystate is 3 (loading), and the user has set an onProgress handler, and
     *    we're not in IE (which has a browen readyState 3: http://jpspan.sourceforge.net/wiki/doku.php?id=javascript:xmlhttprequest:behaviour)
     *    then call it with two arguments: the current number of bytes we've downloaded, and the total size (or -1 if we can't tell).
     *
     *  - Else if the readystate is 4, and the status isn't 200 (not OK), then we failed
     *    somehow, so we either call the callbackFailure method, or throw _XML_REQUEST_FAILED.
     */
    this.callback = function() {
        if (self.onLoad) {
            self.onload     = self.onLoad;
        }
        if (self.onProgress) {
            self.onprogress = self.onProgress;
        }
        if (self.onFail) {
            self.onfail     = self.onFail;
        }

        if (self._XML_REQ.readyState == 4 && self._XML_REQ.status == 200) {
            var obj = self.getObjToReplace();
            if (obj) {
                if (self.replaceAs == _REPLACE_AS_HTML) {
                    // IE dies if you assign to a textarea's innerHTML
                    if (obj.nodeName == "TEXTAREA" || obj.nodeName == "INPUT") {
                        obj.value = self._XML_REQ.responseText;
                    } else {
                        obj.innerHTML = self._XML_REQ.responseText;
                        }
                }
                if (self.replaceAs == _REPLACE_AS_VAR) {
                    obj = self._XML_REQ.responseText;
                } else if (self.replaceAs == _REPLACE_AS_DOM) {
                    eval(self._XML_REQ.responseText);
                    obj.parentNode.replaceChild(_DOM_OBJ, obj);
                    self.setObjToReplace(_DOM_OBJ);
                } 
            }
            if (self.onload) {
                if (self.returnType == _RETURN_AS_DOM) {
                    self.onload(self.normalizeWhitespace(self._XML_REQ.responseXML), obj);
                } else {
                    self.onload(self._XML_REQ.responseText, obj);
                }
            }
        } else if (self._XML_REQ.readyState == 3) {
            if (self.onprogress && !document.all) { // This would throw an error in IE.
                var contentLength = 0;
                // Depends on server.  If content-length isn't set, catch the error
                try {
                    contentLength = self._XML_REQ.getResponseHeader("Content-Length");
                } catch (e) {
                    contentLength = -1;
                }
                self.onprogress(self._XML_REQ.responseText.length, contentLength);
            }

        } else if (self._XML_REQ.readyState == 4) {
            if (self.onfail) {
                self.onfail(self._XML_REQ.status);
            } else {
                throw new Error("Data Request failed with an HTTP status of " + self._XML_REQ.status);
            }
        }
    }


    /**
     *  Normalizes whitespace between mozilla and IE
     *    - removes blank text nodes (where "blank" is defined as "containing no non-space characters")
     *  @param  domObj    the root of the DOM object to normalize
     */
    this.normalizeWhitespace = function (domObj) {
        // with thanks to the kind folks in this thread: http://www.codingforums.com/archive/index.php/t-7028
        if (document.createTreeWalker) {
            var filter = {
                acceptNode: function(node) {
                    if (/\S/.test(node.nodeValue)) {
                        return NodeFilter.FILTER_SKIP;
                    }
                    return NodeFilter.FILTER_ACCEPT;
                }
            }
            var treeWalker = document.createTreeWalker(domObj, NodeFilter.SHOW_TEXT, filter, true);
            while (treeWalker.nextNode()) {
                treeWalker.currentNode.parentNode.removeChild(treeWalker.currentNode);
                treeWalker.currentNode = domObj;
            }
            return domObj;
        } else {
            return domObj;
        }
    }

    /**
     *  Sets the object to replace.  If passed a string, it sets objToReplaceID, which
     *  is evaluated at runtime.  Else, it sets objToReplace to the object reference
     *  it was passed.
     *  @param  obj             a reference to the object to replace, or the object's ID
     *  @param  replaceType     optional arg: replace as DOM obj, or replace as text
     */
    this.setObjToReplace = function(obj) {
        if (arguments[1] == _REPLACE_AS_VAR) {
            self.replaceAs = _REPLACE_AS_VAR;
        }
        if (arguments[1] == _REPLACE_AS_DOM) {
            self.replaceAs = _REPLACE_AS_DOM;
        } else {
            self.replaceAs = _REPLACE_AS_HTML;
        }
        if (typeof obj == "object") {
            self.objToReplace = obj;
        } else if (typeof obj == "string") {
            self.objToReplaceID = obj;

        }
    }

    /**
     *  Returns a reference to the object set by objToReplace
     */
    this.getObjToReplace = function() {
        if (self.objToReplaceID) {
            self.objToReplace = document.getElementById(self.objToReplaceID);
            self.objToReplaceID = "";
        }
        return self.objToReplace;
    }

    /**
     *  Adds an argument to the GET or POST strings.
     *  @param  type    _GET or _POST
     *  @param  name    the argument's name
     *  @param  value   the argument's value
     */
    this.addArg = function(type, name, value) {
        self.argArray[type][name] = escape(value);
    }

    /**
     *  Clears the argument lists
     */
    this.clearArgs = function() {
        self.argArray[_POST] = new Array();
        self.argArray[_GET]  = new Array();
    }

    /**
     *  Resets everything to defaults
     */
    this.clear = function() {
        self.returnType      = _RETURN_AS_TEXT;
        self.argArray        = new Array();

        self.objToReplace    = null;
        self.objToReplaceID  = "";
        self.replaceAs       = _REPLACE_AS_HTML;

        self.onload          = null;
        self.onfail          = null;
        self.onprogress      = null;
        self.cache           = new Array();
        this.clearArgs();
    }



    // ENSURE THAT WE'VE GOT AN XMLHttpRequest OBJECT AVALIABLE
    if (!this.getXMLHTTP()) {
        throw new Error("Could not load XMLHttpRequest object");
    }

    this.clear();
}

var req = new DataRequestor();

