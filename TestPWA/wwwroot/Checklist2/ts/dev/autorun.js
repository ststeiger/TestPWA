"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.onLoad = exports.documentReady = void 0;
function documentReady(listener, options) {
    if (listener == null)
        throw new Error("argument 'listener' is NULL.");
    if (window.document.addEventListener)
        window.document.addEventListener("DOMContentLoaded", listener, options || false);
    else if (window.document.attachEvent)
        window.document.attachEvent("onreadystatechange", listener);
    else
        window.onload = listener;
}
exports.documentReady = documentReady;
function onLoad(listener, options) {
    if (listener == null)
        throw new Error("argument 'listener' is NULL.");
    if (window.addEventListener)
        window.addEventListener("load", listener, options || false);
    else if (window.attachEvent)
        window.attachEvent("onload", listener);
    else
        window.onload = listener;
}
exports.onLoad = onLoad;
