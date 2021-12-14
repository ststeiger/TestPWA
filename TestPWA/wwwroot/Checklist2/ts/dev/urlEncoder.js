"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
function percentEncodeCharacter(c) {
    return "%" + c.charCodeAt(0).toString(16);
}
function percentDecodeCharacter(s, hex) {
    return String.fromCharCode(parseInt(hex, 16));
}
function contentDispositionEncode(str) {
    return encodeURIComponent(str).
        replace(/['()*]/g, percentEncodeCharacter).
        replace(/%(7C|60|5E)/g, percentDecodeCharacter);
}
function urlEncode(str) {
    return encodeURIComponent(str).replace(/[!'()*]/g, function (c) {
        return '%' + c.charCodeAt(0).toString(16);
    });
}
{
    console.log(true);
}
function isPrimitive(val) {
    return !(typeof val == "object" || typeof val == "function");
}
function isArray(obj) {
    return !!obj && obj.constructor === Array;
}
function objectToQueryString(obj) {
    var str = [];
    for (var p in obj) {
        if (obj.hasOwnProperty(p)) {
            if (isPrimitive(obj[p])) {
                str.push(urlEncode(p) + "=" + urlEncode(obj[p]));
            }
            else if (isArray(obj[p])) {
                var t = obj[p];
                for (var i = 0; i < t.length; ++i) {
                    str.push(urlEncode(p) + "=" + urlEncode(t[i]));
                }
            }
        }
    }
    return str.join("&");
}
var person = {
    "first_name": "Marty",
    "last_name": "Mcfly",
    "dependencies": ["stack", "queue", "linked_list"],
    "objects": {
        "key1": "value 1",
        "key2": "value 2",
        "key3": "value 3"
    }
};
var queryString = objectToQueryString(person);
function nestedLoop(obj) {
    var res = {};
    function recurse(obj) {
        for (var key in obj) {
            var value = obj[key];
            if (value != undefined) {
                if (value && typeof value === 'object') {
                    recurse(value);
                }
                else {
                    res[key] = value;
                }
            }
        }
    }
    recurse(obj);
    return res;
}
