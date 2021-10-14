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
    var stuff = require("https://stackoverflow.com/questions/9901082/what-is-this-javascript-require/63070817#63070817");
    console.log(stuff);
}());
(function () {
    return __awaiter(this, void 0, void 0, function () {
        var asyncStuff;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: return [4, require_async("https://stackoverflow.com/questions/9901082/what-is-this-javascript-require/63070817#63070817")];
                case 1:
                    asyncStuff = _a.sent();
                    console.log(asyncStuff);
                    return [2];
            }
        });
    });
}());
(function () { return __awaiter(void 0, void 0, void 0, function () {
    var asyncStuff;
    return __generator(this, function (_a) {
        switch (_a.label) {
            case 0: return [4, window.require_async('./main.js')];
            case 1:
                asyncStuff = _a.sent();
                console.log(asyncStuff);
                return [2];
        }
    });
}); });
function sleepTwice(interval) {
    return new Promise(function (resolve, reject) {
        var wait = setTimeout(function () {
            clearTimeout(wait);
            resolve();
            resolve();
        }, interval);
    });
}
sleepTwice(2000).then(function () {
    console.log("Do I resolve twice, or not ?");
});
var searchParams = new URLSearchParams("?someParam=paramValue");
searchParams.forEach(function (value, key) {
    console.log(value, key);
});
for (var _i = 0, _a = searchParams.entries(); _i < _a.length; _i++) {
    var entry = _a[_i];
    console.log(entry[0] + ' -> ' + entry[1]);
}
Array.prototype.contains = function (obj) {
    var i = this.length;
    while (i--) {
        if (this[i] === obj) {
            return true;
        }
    }
    return false;
};
function parseQuery(input) {
    var retValue = {
        "url": null,
        "hash": null,
        "query": null,
        "dS": {},
        "dI": {},
        "kvps": [],
        "containsKey": null,
        "get": null,
        "set": null,
        "remove": null
    };
    retValue.containsKey = function (key) {
        for (var j = 0; j < retValue.kvps.length; ++j) {
            if (retValue.kvps[j][0].toLowerCase() == key.toLowerCase())
                return true;
        }
        return false;
    };
    retValue.get = function (key) {
        for (var j = 0; j < retValue.kvps.length; ++j) {
            if (retValue.kvps[j][0].toLowerCase() == key.toLowerCase())
                return retValue.kvps[j][1];
        }
        return null;
    };
    retValue.set = function (key, value) {
        for (var j = 0; j < retValue.kvps.length; ++j) {
            if (retValue.kvps[j][0].toLowerCase() == key.toLowerCase()) {
                retValue.kvps[j][1] = value;
                retValue.dS[retValue.kvps[j][0]] = retValue.kvps[j][1];
                retValue.dI[retValue.kvps[j][0].toLowerCase()] = retValue.kvps[j][1];
                return;
            }
        }
        retValue.kvps.push([key, value]);
        retValue.dS[key] = value;
        retValue.dI[key.toLowerCase()] = value;
    };
    retValue.remove = function (key) {
        for (var j = 0; j < retValue.kvps.length; ++j) {
            if (retValue.kvps[j][0].toLowerCase() == key.toLowerCase()) {
                delete retValue.dI[retValue.kvps[j][0].toLowerCase()];
                delete retValue.dS[retValue.kvps[j][0]];
                retValue.kvps.splice(j, 1);
                return;
            }
        }
        return null;
    };
    if (input == null)
        return retValue;
    var hashPos = input.indexOf('#');
    if (hashPos !== -1) {
        retValue.hash = input.substr(hashPos);
        input = input.substr(0, hashPos);
    }
    var qmPos = input.indexOf('?');
    retValue.query = input;
    if (qmPos !== -1) {
        retValue.query = retValue.query.substr(qmPos + 1);
        retValue.url = input.substr(0, qmPos);
    }
    else {
        retValue.url = input;
        retValue.query = null;
    }
    if (retValue.url.length == 0)
        retValue.url = null;
    if (retValue.query != null && retValue.query.length > 0) {
        var pairs = retValue.query.split('&');
        for (var i = 0; i < pairs.length; ++i) {
            var kvp = pairs[i].split('=');
            retValue.kvps.push([decodeURIComponent(kvp[0]), (kvp.length == 2 ? decodeURIComponent(kvp[1]) : null)]);
            retValue.dS[retValue.kvps[i][0]] = retValue.kvps[i][1];
            retValue.dI[retValue.kvps[i][0].toLowerCase()] = retValue.kvps[i][1];
        }
    }
    return retValue;
}
var x = parseQuery("foo.bar/lol?hello=kitty&foo=bar&lol&trololol&abc=def#mydar");
