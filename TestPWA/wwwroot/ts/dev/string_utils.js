"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.replace = exports.trim = exports.rtrim = exports.ltrim = exports.right = exports.left = void 0;
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
