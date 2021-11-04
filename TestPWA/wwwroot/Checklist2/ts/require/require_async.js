"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
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
function require_async(name) {
    return __awaiter(this, void 0, void 0, function () {
        function readFileAsync(fileName, encoding) {
            return __awaiter(this, void 0, void 0, function () {
                var textDecoder, response, contentType, mimeType, ind, buffer, file;
                return __generator(this, function (_a) {
                    switch (_a.label) {
                        case 0:
                            textDecoder = new TextDecoder(encoding);
                            return [4, fetch(fileName)];
                        case 1:
                            response = _a.sent();
                            contentType = response.headers.get("Content-Type");
                            mimeType = null;
                            if (contentType != null) {
                                contentType = contentType.toLowerCase();
                                ind = contentType.indexOf(";");
                                if (ind == -1)
                                    mimeType = contentType;
                                else
                                    mimeType = contentType.substr(0, ind).replace(/^\s+|\s+$/g, '');
                            }
                            console.log(response.ok);
                            console.log(response.status);
                            console.log(response.statusText);
                            return [4, response.arrayBuffer()];
                        case 2:
                            buffer = _a.sent();
                            file = textDecoder.decode(buffer);
                            return [2, {
                                    "text": file,
                                    "contentType": contentType,
                                    "mimeType": mimeType
                                }];
                    }
                });
            });
        }
        var code, module, wrapper;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    console.log("Evaluating file " + name);
                    if (!!(name in require_async.cache)) return [3, 4];
                    console.log(name + " is not in cache; reading from disk");
                    return [4, readFileAsync(name, 'utf8')];
                case 1:
                    code = _a.sent();
                    module = { exports: {} };
                    require_async.cache[name] = module;
                    console.log("contentType", code.contentType, "mimeType:", code.mimeType);
                    if (!(code.mimeType.startsWith("text/") && code.mimeType.indexOf("javascript") == -1 && code.mimeType.indexOf("json") == -1)) return [3, 2];
                    require_async.cache[name] = { "exports": code.text };
                    return [3, 4];
                case 2:
                    wrapper = Function("asyncRequire, exports, module", code.text);
                    return [4, wrapper(require_async, module.exports, module)];
                case 3:
                    _a.sent();
                    _a.label = 4;
                case 4:
                    console.log(name + " is in cache. Returning it...");
                    return [2, require_async.cache[name].exports];
            }
        });
    });
}
require_async.cache = Object.create(null);
require_async.paths = Object.create(null);
require_async.debug = false;
window.require_async = require_async;
(function () {
    return __awaiter(this, void 0, void 0, function () {
        var asyncStuff, cs, props, i, sanitizedPath, url, ts;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: return [4, require_async("https://stackoverflow.com/questions/9901082/what-is-this-javascript-require/63070817#63070817")];
                case 1:
                    asyncStuff = _a.sent();
                    console.log(asyncStuff);
                    window.require_async = require_async;
                    window.exports = window.exports || Object.create(null);
                    cs = document.currentScript || document.scripts[document.scripts.length - 1];
                    if (!(cs != null)) return [3, 4];
                    require_async.paths.main = cs.getAttribute("data-main");
                    require_async.paths.src = cs.getAttribute("src");
                    require_async.paths.html = document.location.href;
                    props = ["hash", "host", "hostname", "origin", "pathname", "port", "protocol", "search", "ancestorOrigins"];
                    for (i = 0; i < props.length; ++i) {
                        require_async.paths[props[i]] = document.location[props[i]];
                    }
                    require_async.paths.basePath = require_async.paths.html.substr(0, require_async.paths.html.lastIndexOf("/") + 1);
                    sanitizedPath = require_async.paths.main;
                    if (sanitizedPath.startsWith("./"))
                        sanitizedPath = sanitizedPath.substr(2);
                    url = require_async.paths.basePath + sanitizedPath;
                    require_async.paths.mainPath = url.substr(0, url.lastIndexOf("/") + 1);
                    return [4, require_async(url)];
                case 2:
                    ts = _a.sent();
                    if (!(ts && ts.main)) return [3, 4];
                    return [4, ts.main()];
                case 3:
                    _a.sent();
                    _a.label = 4;
                case 4: return [2];
            }
        });
    });
}());
function foobar(key) {
    return __awaiter(this, void 0, void 0, function () {
        return __generator(this, function (_a) {
            return [2, "hello" + key];
        });
    });
}
function doSomething() { }
function removeAll() {
    Promise.all([
        foobar("key1"),
        foobar("key2"),
        foobar("key3")
    ]).then(function (value) {
        doSomething();
    });
}
function removeAll2() {
    return __awaiter(this, void 0, void 0, function () {
        var boo, _a, a, b, c;
        return __generator(this, function (_b) {
            switch (_b.label) {
                case 0: return [4, Promise.all([
                        foobar("key1"),
                        foobar("key2"),
                        foobar("key3")
                    ])];
                case 1:
                    boo = _b.sent();
                    return [4, Promise.all([
                            foobar("key1"),
                            foobar("key2"),
                            foobar("key3")
                        ])];
                case 2:
                    _a = _b.sent(), a = _a[0], b = _a[1], c = _a[2];
                    console.log("ciao", a, b, c);
                    doSomething();
                    return [2];
            }
        });
    });
}
