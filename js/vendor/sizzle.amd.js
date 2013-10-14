define('sizzle', ['jquery'], function($) {
    return $.find;
});
window.Sizzle = require(['sizzle']);
