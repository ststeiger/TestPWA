"use strict";
var a = require("HttpUtility.js");
var b = a.htmlEncode("���<>[]{}nihao");
var c = a.htmlDecode(b);
console.log(c);
