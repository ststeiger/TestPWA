"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.findHtmlNode = exports.findNode = exports.groupBy = void 0;
function groupBy(source, keySelector) {
    if (source == null)
        throw new Error("ArgumentNullException: Source");
    if (keySelector == null)
        throw new Error("ArgumentNullException: keySelector");
    var dict = {};
    for (var i = 0; i < source.length; ++i) {
        var key = String(keySelector(source[i])) || "null";
        if (!dict.hasOwnProperty(key)) {
            dict[key] = [];
        }
        dict[key].push(source[i]);
    }
    return dict;
}
exports.groupBy = groupBy;
function group2() {
    var arr = [
        { studentType: 'freshman' },
        { studentType: 'senior' },
        { studentType: 'freshman' },
        { studentType: 'junior' },
        { studentType: 'sophmore' },
        { studentType: 'freshman' },
        { studentType: 'freshman' },
        { studentType: 'junior' },
        { studentType: 'senior' },
        { studentType: 'senior' },
        { studentType: 'freshman' },
        { studentType: 'sophmore' },
        { studentType: 'freshman' },
        { studentType: 'sophmore' },
        { studentType: 'senior' }
    ];
}
function findNode(id, currentNode) {
    if (id == currentNode.id) {
        return currentNode;
    }
    else {
        for (var i = 0; i < currentNode.children.length; i += 1) {
            var result = findNode(id, currentNode.children[i]);
            if (result !== null) {
                return result;
            }
        }
        return null;
    }
}
exports.findNode = findNode;
function findHtmlNode(id, currentNode) {
    if (currentNode.nodeType === Node.ELEMENT_NODE && id == currentNode.id) {
        return currentNode;
    }
    else {
        var children = currentNode.childNodes;
        for (var child in children) {
            if (children.hasOwnProperty(child)) {
                var result = findHtmlNode(id, children[child]);
                if (result !== null) {
                    return result;
                }
            }
        }
        return null;
    }
}
exports.findHtmlNode = findHtmlNode;
