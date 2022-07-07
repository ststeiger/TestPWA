"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.InsertableStack = void 0;
var dbl = require("./linked_list_double.js");
var InsertableStack = (function () {
    function InsertableStack() {
        this.items = new dbl.DoublyLinkedList();
        this.push = this.push.bind(this);
        this.pop = this.pop.bind(this);
        this.dequeue = this.pop.bind(this);
        this.peek = this.pop.bind(this);
        this.debugDisplay = this.pop.bind(this);
    }
    InsertableStack.prototype.push = function (element) {
        this.items.append(element);
    };
    InsertableStack.prototype.pop = function () {
        if (this.items.length == 0) {
            throw new Error("Stack underflow");
        }
        var ret = this.items.tail.value;
        this.items.removeLast();
        return ret;
    };
    InsertableStack.prototype.dequeue = function () {
        var ret = this.items.head.value;
        this.items.removeFirst();
        return ret;
    };
    InsertableStack.prototype.peek = function () {
        return this.items.tail.value;
    };
    Object.defineProperty(InsertableStack.prototype, "isEmpty", {
        get: function () {
            return this.items.length == 0;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(InsertableStack.prototype, "count", {
        get: function () {
            return this.items.length;
        },
        enumerable: false,
        configurable: true
    });
    InsertableStack.prototype.markCurrent = function () {
        this.m_markedNode = this.items.tail;
    };
    InsertableStack.prototype.unmarkCurrent = function () {
        this.m_markedNode = null;
    };
    InsertableStack.prototype.InsertAfterCurrent = function (data) {
        if (this.m_markedNode == null) {
            this.items.prepend(data);
            return;
        }
        this.items.addAfter(this.m_markedNode, data);
    };
    InsertableStack.prototype.debugDisplay = function () {
        var str = [];
        var currentList = this.items.head;
        while (currentList !== null) {
            str.push(String(currentList.value));
            currentList = currentList.next;
        }
        return str.join(" ");
    };
    return InsertableStack;
}());
exports.InsertableStack = InsertableStack;
var sillyIterator = (function () {
    function sillyIterator() {
    }
    sillyIterator.prototype.createFilter = function (fn) {
        function acceptNode(node) {
            return NodeFilter.FILTER_ACCEPT;
        }
        if (fn == null)
            fn = acceptNode;
        var safeFilter = fn;
        safeFilter.acceptNode = fn;
        return safeFilter;
    };
    sillyIterator.prototype.createVisibleListNodesFilter = function () {
        function acceptNode(node) {
            if (!node)
                return NodeFilter.FILTER_REJECT;
            if (node.nodeType !== Node.ELEMENT_NODE)
                return NodeFilter.FILTER_REJECT;
            return NodeFilter.FILTER_ACCEPT;
        }
        return this.createFilter(acceptNode);
    };
    sillyIterator.prototype.getNextTab = function (root) {
        var currentNode;
        var ni = document.createTreeWalker(root, NodeFilter.SHOW_ELEMENT, this.createVisibleListNodesFilter());
        ni.currentNode = root;
        var a = [];
        while (currentNode = ni.nextNode()) {
            a.push(currentNode);
        }
        return a;
    };
    return sillyIterator;
}());
