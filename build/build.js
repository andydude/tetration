// JSON patch for build process

var JSON = {}; JSON.parse = function (json) {
    var value = eval("(" + json + ")");
    return value;
};

// Main logic for build process

var Drosera = Drosera || {};

Drosera.renderPage = function(args, opts) {
    args = Array.prototype.slice.call(args, 0);

    opts.debug = opts.debug || false;
    opts.projectDir = opts.projectDir || '../';
    opts.sourcesDir = opts.sourcesDir || opts.projectDir;
    opts.templatesSubDir = opts.templatesSubDir || 'templates/';
    opts.viewModelSubDir = opts.viewModelSubDir || 'content/';

    // load template
    var templateName = args.shift();
    opts.templatesDir = opts.templatesDir || (opts.projectDir + opts.templatesSubDir);
    opts.templatePath = opts.templatePath || (opts.templatesDir + templateName + '.mustache');
    var template = readFile(opts.templatePath);
    opts.debug && print(opts.templatePath);

    // load view-model
    var viewModelName = args.shift();
    opts.viewModelDir = opts.viewModelDir || (opts.sourcesDir + opts.viewModelSubDir);
    opts.viewModelJson = opts.viewModelJson || (opts.viewModelDir + viewModelName + '.json');
    opts.viewModelHtml = opts.viewModelHtml || (opts.viewModelDir + viewModelName + '.html');
    var viewModel = JSON.parse(readFile(opts.viewModelJson));
    opts.debug && print(opts.viewModelJson);
    opts.debug && print(opts.viewModelHtml);

    // load partials
    var partials = {};
    var partialNames = args;
    opts.partialPaths = opts.partialPaths || partialNames.map(function(name){
        return {name: name, path: opts.templatesDir + name + '.mustache'};
    });
    opts.partialPaths.forEach(function(partialObj){
        var name = partialObj.name,
            path = partialObj.path;
        partials[name] = readFile(path);
    });
    
    // load content
    partials.content = readFile(opts.viewModelHtml);
    
    // output
    return Mustache.render(template, viewModel, partials);
};
