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
if (!String.prototype.endsWith) {
    String.prototype.endsWith = function (search, this_len) {
        if (this_len === undefined || this_len > this.length) {
            this_len = this.length;
        }
        return this.substring(this_len - search.length, this_len) === search;
    };
}
if (!String.prototype.trim) {
    String.prototype.trim = function () {
        return this.replace(/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g, '');
    };
}
if (!String.prototype.trimStart) {
    String.prototype.trimStart = function () {
        return this.replace(/^[\s\uFEFF\xA0]+/g, '');
    };
}
if (!String.prototype.trimEnd) {
    String.prototype.trimEnd = function () {
        return this.replace(/[\s\uFEFF\xA0]+$/g, '');
    };
}
function require(name) {
    console.log("Evaluating file " + name);
    function getErrorObject() {
        try {
            throw Error('');
        }
        catch (err) {
            return err;
        }
    }
    function getScriptName(fn) {
        var error = getErrorObject(), source, lastStackFrameRegex = new RegExp(/.+\/(.*?):\d+(:\d+)*$/), currentStackFrameRegex = new RegExp(/getScriptName \(.+\/(.*):\d+:\d+\)/);
        if (error.stack) {
            var rx = (error.stack.indexOf('@') != -1) ? new RegExp("(.*)@(.*):", 'gm')
                : new RegExp("at\\s((.*?)\\s+)?(\\()?(http.*:)(\\))?", 'gm');
            var frames_1 = [];
            var match = void 0;
            while ((match = rx.exec(error.stack)) !== null) {
                var method = null;
                var path = null;
                if (match.length == 6) {
                    method = match[2];
                    path = match[4].substr(0, match[4].lastIndexOf('/') + 1);
                }
                else if (match.length == 3) {
                    method = match[1];
                    path = match[2].substr(0, match[2].lastIndexOf('/') + 1);
                }
                else {
                    console.log("require.js: bad match: ", match);
                }
                if (["getErrorObject", "getScriptName", "readFileSync", "require"].indexOf(method) == -1) {
                    return path;
                }
                frames_1.push([method, path]);
            }
            return frames_1[frames_1.length - 1][1];
        }
        if (error.fileName != undefined)
            return error.fileName;
        return null;
    }
    function readFileSync(fileName, encoding) {
        var client = new XMLHttpRequest();
        var contentType = null;
        var mimeType = null;
        if (fileName.startsWith("./")) {
            fileName = fileName.substr(2);
            fileName = getScriptName(fileName) + fileName;
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
        console.log("open " + fileName);
        client.open("GET", fileName, false);
        client.send();
        if (client.status === 200) {
            return {
                "text": client.responseText,
                "contentType": contentType,
                "mimeType": mimeType
            };
        }
        return {
            "text": "<!-- -->",
            "contentType": fileName,
            "mimeType": encoding
        };
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
            if (module.exports.default) {
                module.exports = module.exports.default;
            }
        }
    }
    console.log(name + " is in cache. Returning it...");
    return require.cache[name].exports;
}
require.cache = Object.create(null);
require.paths = Object.create(null);
(function () {
    window.require = require;
    window.exports = window.exports || Object.create(null);
    var cs = document.currentScript || document.scripts[document.scripts.length - 1];
    if (cs != null) {
        require.paths.main = cs.getAttribute("data-main");
        require.paths.src = cs.getAttribute("src");
        require.paths.html = document.location.href;
    }
}());
