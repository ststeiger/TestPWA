"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.jWalk = void 0;
function createFilter(fn) {
    function acceptNode(node) {
        return NodeFilter.FILTER_ACCEPT;
    }
    if (fn == null)
        fn = acceptNode;
    var safeFilter = fn;
    safeFilter.acceptNode = fn;
    return safeFilter;
}
function createVisibleListNodesFilter() {
    function acceptNode(node) {
        if (!node)
            return NodeFilter.FILTER_REJECT;
        if (node.nodeType !== Node.ELEMENT_NODE)
            return NodeFilter.FILTER_REJECT;
        return NodeFilter.FILTER_ACCEPT;
    }
    return createFilter(acceptNode);
}
function jWalk(container, documentName) {
    var ni = document.createTreeWalker(container, NodeFilter.SHOW_ELEMENT, createVisibleListNodesFilter(), false);
    ni.currentNode = container;
    var currentNode;
    while (currentNode = ni.nextNode()) {
        var el = currentNode;
        console.log(el);
    }
}
exports.jWalk = jWalk;
