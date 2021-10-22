"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.getTranslateData = void 0;
var utils = require("./string_utils.js");
function getTranslateData() {
    var eles = document.querySelectorAll('tr td[colspan="6"]');
    var arr = [];
    for (var i = 0; i < eles.length; ++i) {
        arr.push(utils.trim(eles[i].textContent));
    }
    return arr;
}
exports.getTranslateData = getTranslateData;
