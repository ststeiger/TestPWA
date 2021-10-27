"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.newGuid = exports.newId = exports.uuidv4 = exports.cryptRandom = void 0;
function cryptRandom() {
    try {
        var buffer = new ArrayBuffer(8);
        var ints = new Int8Array(buffer);
        ((window.crypto || window.msCrypto)).getRandomValues(ints);
        ints[7] = 63;
        ints[6] |= 0xf0;
        var float = new DataView(buffer).getFloat64(0, true) - 1;
        return float;
    }
    catch (error) { }
    return Math.random();
}
exports.cryptRandom = cryptRandom;
function uuidv4() {
    return "10000000-1000-4000-8000-100000000000".replace(/[018]/g, function (b) {
        var c = parseInt(b);
        return (c ^ ((window.crypto || window.msCrypto)).getRandomValues(new Uint8Array(1))[0] & 15 >> c / 4).toString(16);
    });
}
exports.uuidv4 = uuidv4;
function newId(v) {
    function s4(s) {
        return Math.floor((1 + cryptRandom()) * 0x10000)
            .toString(16)
            .substring(s || 1);
    }
    var item = ["8", "9", "a", "b"][Math.floor(cryptRandom() * 4)];
    var uuid = s4() + s4() + '-' + s4() + '-' + (v || 4).toString() + s4(2) + '-' + item + s4(2) + '-' + s4() + s4() + s4();
    return uuid.toUpperCase();
}
exports.newId = newId;
function newGuid(v) {
    var result = [];
    var item = ["8", "9", "A", "B"][Math.floor(cryptRandom() * 4)];
    for (var i = 0; i < 32; i++) {
        if (i == 8 || i == 12 || i == 16 || i == 20)
            result.push("-");
        switch (i) {
            case 12:
                result.push((v || 4).toString());
                break;
            case 16:
                result.push(item);
                break;
            default:
                result.push(Math.floor(cryptRandom() * 16).toString(16).toUpperCase());
        }
    }
    return result.join("");
}
exports.newGuid = newGuid;
