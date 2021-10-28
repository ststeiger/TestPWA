"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.parseQuery = void 0;
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
exports.parseQuery = parseQuery;
