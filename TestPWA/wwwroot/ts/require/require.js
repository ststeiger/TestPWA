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
    var cs = document.currentScript || document.scripts[document.scripts.length - 1];
    var src = cs.getAttribute("src");
    var bs = cs.baseURI;
    var source = null;
    console.log("relativeScript", src);
    console.log("base", cs.baseURI);
    var ind = src.lastIndexOf('/');
    if (ind != -1)
        source = src.substr(0, ind + 1);
    function _getCaller() {
        var err = new Error();
        Error.captureStackTrace(err);
        var frames = err.stack.split('\n').slice(1);
        for (var i = 0; i < frames.length; i++) {
            console.log("framews", frames[i]);
            var STACK_FRAME_RE = new RegExp("\\((.*?\\.(js|htm|html)).*\\)");
            var callerInfo = STACK_FRAME_RE.exec(frames[i]);
            if (callerInfo && callerInfo.length > 0)
                console.log("callerInfo", callerInfo[1]);
        }
        return null;
    }
    function getErrorObject() {
        try {
            throw Error('');
        }
        catch (err) {
            return err;
        }
    }
    var err = getErrorObject();
    function readFileSync(fileName, encoding) {
        var client = new XMLHttpRequest();
        var contentType = null;
        var mimeType = null;
        if (fileName.startsWith("./")) {
            fileName = fileName.substr(2);
            fileName = source + fileName;
        }
        if (fileName.indexOf("?") == -1)
            fileName += "?no_cache=" + (new Date()).getTime().toString();
        else
            fileName += "&no_cache=" + (new Date()).getTime().toString();
        function hand() {
            if (client.readyState === XMLHttpRequest.DONE) {
                var status_1 = client.status;
                if (status_1 === 0 || (status_1 >= 200 && status_1 < 400)) {
                    contentType = this.getResponseHeader('content-type');
                    if (contentType != null) {
                        contentType = contentType.toLowerCase();
                        var ind_1 = contentType.indexOf(";");
                        if (ind_1 == -1)
                            mimeType = contentType;
                        else
                            mimeType = contentType.substr(0, ind_1).replace(/^\s+|\s+$/g, '');
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
window.exports = {};
