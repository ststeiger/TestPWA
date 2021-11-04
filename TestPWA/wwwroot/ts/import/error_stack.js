"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.getScriptName = exports.getErrorObject = exports.foobar = void 0;
var foo = require("./foo.js");
var test = require("./testmodule2.js");
function foobar() {
    foo.bar();
    test.main();
}
exports.foobar = foobar;
function getErrorObject() {
    try {
        throw Error('');
    }
    catch (err) {
        return err;
    }
}
exports.getErrorObject = getErrorObject;
function getScriptName(fn) {
    var error = getErrorObject(), source, lastStackFrameRegex = new RegExp(/.+\/(.*?):\d+(:\d+)*$/), currentStackFrameRegex = new RegExp(/getScriptName \(.+\/(.*):\d+:\d+\)/);
    if (error.stack) {
        var rx = (error.stack.indexOf('@') != -1) ? new RegExp("(.*)@(.*):", 'gm')
            : new RegExp("at\\s((.*?)\\s+)?(\\()?(http.*:)(\\))?", 'gm');
        var frames_1 = [];
        var match = void 0;
        while ((match = rx.exec(error.stack)) !== null) {
            var method = null;
            var path = null;
            if (match.length == 6) {
                method = match[2];
                path = match[4].substr(0, match[4].lastIndexOf('/') + 1);
            }
            else if (match.length == 3) {
                method = match[1];
                path = match[2].substr(0, match[2].lastIndexOf('/') + 1);
            }
            else {
                console.log("require.js: bad match: ", match);
            }
            if (["getErrorObject", "getScriptName", "readFileSync", "require"].indexOf(method) == -1) {
                return path;
            }
            frames_1.push([method, path]);
        }
        return frames_1[frames_1.length - 1][1];
    }
    if (error.fileName != undefined)
        return error.fileName;
    return null;
}
exports.getScriptName = getScriptName;
