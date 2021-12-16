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
function isObject(obj) {
    return (typeof obj === 'object' && obj !== null);
}
function objectToQueryString(obj, key) {
    var str = [];
    if (isPrimitive(obj)) {
        if (obj != null)
            str.push(String(obj));
    }
    else if (isArray(obj)) {
        var t = obj;
        for (var i = 0; i < t.length; ++i) {
            var v = objectToQueryString(t[i]);
            if (v != null)
                str.push(urlEncode(key || i.toString()) + "=" + urlEncode(v));
        }
    }
    else if (isObject(obj)) {
        for (var p in obj) {
            if (!obj.hasOwnProperty(p))
                continue;
            var r = objectToQueryString(obj[p], p);
            if (r != null) {
                if (isArray(obj[p]))
                    str.push(r);
                else
                    str.push(urlEncode(p) + "=" + urlEncode(r));
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
console.log(queryString);
function unpack(qs) {
    var obj = {};
    var values = qs.split("&");
    for (var i = 0; i < values.length; ++i) {
        var kvp = values[i].split("=");
        var k = decodeURIComponent(kvp[0]);
        var v = decodeURIComponent(kvp[1]);
        if (obj.hasOwnProperty(k)) {
            if (isArray(obj[k]))
                obj[k].push(v);
            else {
                var t = obj[k];
                obj[k] = [t];
                obj[k].push(v);
            }
        }
        else
            obj[k] = v;
    }
    return obj;
}
console.log(unpack(queryString));
console.log(unpack(unpack(queryString).objects));
