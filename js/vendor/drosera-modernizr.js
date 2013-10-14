define('drosera-modernizr', ['jquery', 'modernizr', 'exports'], function($, Modernizr, exports){
    "use strict";

    var browserPluginList = {
        flash: {
            activex: "ShockwaveFlash.ShockwaveFlash",
            pattern: /flash/gim
        },
        silverlight: {
            activex: ["AgControl.AgControl"],
            pattern: /silverlight/gim
        },
        pdf: {
            activex: "PDF.PdfCtrl",
            pattern: /adobe\s?acrobat/gim
        },
        quicktime: {
            activex: "QuickTime.QuickTime",
            pattern: /quicktime/gim
        },
        wmp: {
            activex: "WMPlayer.OCX",
            pattern: /(windows\smedia)|(Microsoft)/gim
        },
        shockwave: {
            activex: "SWCtl.SWCtl",
            pattern: /shockwave/gim
        },
        realplayer: {
            activex: "RealPlayer",
            pattern: /realplayer/gim
        },
        java: {
            activex: navigator.javaEnabled(),
            pattern: /java/gim
        }
    };

    exports.testBrowserPlugin = function (plugin) {
        if (window.ActiveXObject !== undefined) {
            try {
                new ActiveXObject(plugin.activex);
                return true;
            } catch (e) {
                return false;
            }
        } else {
            var supported = false;
            $.each(navigator.plugins, function () {
                if (this.name.match(plugin.pattern)) {
                    supported = true;
                    return false;
                }
            });
            return supported;
        }
    };

    $.each(browserPluginList, function (name, plugin) {
        Modernizr.addTest(name, function(){
            return exports.testBrowserPlugin(plugin);
        });
    });

    return exports;
});
