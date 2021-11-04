"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.bar = exports.foo = void 0;
function foo() {
    return 123;
}
exports.foo = foo;
function bar() {
    return 123;
}
exports.bar = bar;
var _eventHandlers = {};
function addListener(node, event, handler, capture) {
    if (capture === void 0) { capture = false; }
    if (!(event in _eventHandlers)) {
        _eventHandlers[event] = [];
    }
    _eventHandlers[event].push({ "node": node, "handler": handler, "capture": capture });
    node.addEventListener(event, handler, capture);
}
function removeAllListeners(targetNode, event) {
    _eventHandlers[event].filter(function (value, index, array) {
        return value.node === targetNode;
    }).forEach(function (value, index, array) {
        value.node.removeEventListener(event, value.handler, value.capture);
    });
    _eventHandlers[event] = _eventHandlers[event].filter(function (value, index, array) {
        return value.node !== targetNode;
    });
}
