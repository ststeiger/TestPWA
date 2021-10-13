"use strict";
(function () {
    var method;
    var noop = function () { };
    var methods = [
        'assert', 'clear', 'count', 'debug', 'dir', 'dirxml', 'error',
        'exception', 'group', 'groupCollapsed', 'groupEnd', 'info', 'log',
        'markTimeline', 'profile', 'profileEnd', 'table', 'time', 'timeEnd',
        'timeStamp', 'trace', 'warn'
    ];
    var length = methods.length;
    var console = (window.console = window.console || {});
    while (length--) {
        method = methods[length];
        if (!console[method]) {
            console[method] = noop;
        }
    }
}());
if (!String.prototype.startsWith) {
    Object.defineProperty(String.prototype, 'startsWith', {
        value: function (search, rawPos) {
            var pos = rawPos > 0 ? rawPos | 0 : 0;
            return this.substring(pos, pos + search.length) === search;
        }
    });
}
function require(name) {
    console.log("Evaluating file " + name);
    function readFileSync(fileName, encoding) {
        var client = new XMLHttpRequest();
        var contentType = null;
        var mimeType = null;
        function hand() {
            if (client.readyState === XMLHttpRequest.DONE) {
                var status_1 = client.status;
                if (status_1 === 0 || (status_1 >= 200 && status_1 < 400)) {
                    contentType = this.getResponseHeader('content-type');
                    if (contentType != null) {
                        contentType = contentType.toLowerCase();
                        var ind = contentType.indexOf(";");
                        if (ind == -1)
                            mimeType = contentType;
                        else
                            mimeType = contentType.substr(0, ind).replace(/^\s+|\s+$/g, '');
                    }
                }
                else {
                }
            }
        }
        client.onreadystatechange = hand;
        client.open("GET", fileName, false);
        client.send();
        if (client.status === 200) {
            return {
                "text": client.responseText,
                "contentType": contentType,
                "mimeType": mimeType
            };
        }
        return null;
    }
    if (!(name in require.cache)) {
        console.log(name + " is not in cache; reading from disk");
        var code = readFileSync(name, 'utf8');
        var module = { exports: {} };
        require.cache[name] = module;
        console.log("contentType", code.contentType, "mimeType:", code.mimeType);
        if (code.mimeType.startsWith("text/") && code.mimeType.indexOf("javascript") == -1 && code.mimeType.indexOf("json") == -1) {
            require.cache[name] = { "exports": code.text };
        }
        else {
            var wrapper = Function("require, exports, module", code.text);
            wrapper(require, module.exports, module);
        }
    }
    console.log(name + " is in cache. Returning it...");
    return require.cache[name].exports;
}
require.cache = Object.create(null);
window.require = require;
