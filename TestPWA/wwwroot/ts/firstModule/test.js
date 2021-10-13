"use strict";
var a = require("HttpUtility.js");
var b = a.htmlEncode("äöü<>[]{}nihao");
var c = a.htmlDecode(b);
console.log(c);
