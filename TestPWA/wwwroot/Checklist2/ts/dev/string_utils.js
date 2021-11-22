"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.concat = exports.normalizeNewLines = exports.toUnixNewLines = exports.replace = exports.isNullOrWhiteSpace = exports.trim = exports.rtrim = exports.ltrim = exports.right = exports.left = void 0;
function left(str, length) {
    if (!str)
        return str;
    return str.substr(0, length);
}
exports.left = left;
function right(str, length) {
    if (!str)
        return str;
    return str.substr(-length);
}
exports.right = right;
function ltrim(str) {
    if (!str)
        return str;
    return str.replace(/^[\s\uFEFF\xA0]+/g, '');
}
exports.ltrim = ltrim;
function rtrim(str) {
    if (!str)
        return str;
    return str.replace(/[\s\uFEFF\xA0]+$/g, '');
}
exports.rtrim = rtrim;
function trim(str) {
    if (!str)
        return str;
    return str.replace(/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g, '');
}
exports.trim = trim;
function isNullOrWhiteSpace(str) {
    if (str == null)
        return true;
    return /^[\s\uFEFF\xA0]*$/g.test(str);
}
exports.isNullOrWhiteSpace = isNullOrWhiteSpace;
function replace(str, oldToken, newToken, ignoreCase) {
    if (Array.isArray(oldToken)) {
        for (var i = 0; i < oldToken.length; ++i) {
            str = replace(str, oldToken[i], newToken, ignoreCase);
        }
        return str;
    }
    newToken = newToken || "";
    ignoreCase = ignoreCase || false;
    if (!str || !oldToken)
        return str;
    if ((ignoreCase ? oldToken.toLowerCase() : oldToken) == (ignoreCase ? newToken.toLowerCase() : newToken))
        return str;
    var foundAt = 0;
    var ci = (ignoreCase ? oldToken.toLowerCase() : oldToken);
    while ((foundAt = ((ignoreCase ? str.toLowerCase() : str)).indexOf(ci, foundAt)) != -1) {
        str = str.substr(0, foundAt) + newToken + str.substr(foundAt + oldToken.length);
        foundAt += newToken.length;
    }
    return str;
}
exports.replace = replace;
function toUnixNewLines(str) {
    if (!str)
        return "";
    return replace(str, "\r\n", "\n", false);
}
exports.toUnixNewLines = toUnixNewLines;
function normalizeNewLines(str) {
    if (!str)
        return "";
    return replace(toUnixNewLines(str), "\n", "\r\n", false);
}
exports.normalizeNewLines = normalizeNewLines;
function concat() {
    var args = [];
    for (var _i = 0; _i < arguments.length; _i++) {
        args[_i] = arguments[_i];
    }
    var a = [];
    for (var i = 0; i < args.length; i++) {
        if (args[i] != null)
            a.push(String(args[i]));
    }
    return a.join("");
}
exports.concat = concat;
