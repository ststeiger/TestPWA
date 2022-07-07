"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.DoublyLinkedList = exports.DoublyLinkedNode = void 0;
var DoublyLinkedNode = (function () {
    function DoublyLinkedNode(value) {
        this.value = value;
        this.next = null;
        this.previous = null;
    }
    return DoublyLinkedNode;
}());
exports.DoublyLinkedNode = DoublyLinkedNode;
var DoublyLinkedList = (function () {
    function DoublyLinkedList(value) {
        if (value != null) {
            this.head = new DoublyLinkedNode(value);
            this.length = 1;
        }
        else {
            this.head = null;
            this.tail = null;
            this.length = 0;
        }
        this.tail = this.head;
        this.printList = this.printList.bind(this);
        this.insert = this.insert.bind(this);
        this.prepend = this.prepend.bind(this);
        this.append = this.append.bind(this);
        this.remove = this.remove.bind(this);
        this.removeFirst = this.removeFirst.bind(this);
        this.removeLast = this.removeLast.bind(this);
    }
    DoublyLinkedList.prototype.printList = function () {
        var array = [];
        var currentList = this.head;
        while (currentList !== null) {
            array.push(currentList.value);
            currentList = currentList.next;
        }
        console.log(array.join(' <--> '));
        return this;
    };
    DoublyLinkedList.prototype.append = function (value) {
        var newDoublyLinkedNode = new DoublyLinkedNode(value);
        if (this.length == 0) {
            this.head = newDoublyLinkedNode;
            this.tail = newDoublyLinkedNode;
        }
        else {
            this.tail.next = newDoublyLinkedNode;
            newDoublyLinkedNode.previous = this.tail;
            this.tail = newDoublyLinkedNode;
        }
        this.length++;
    };
    DoublyLinkedList.prototype.prepend = function (value) {
        var newDoublyLinkedNode = new DoublyLinkedNode(value);
        if (this.length == 0) {
            this.head = newDoublyLinkedNode;
            this.tail = newDoublyLinkedNode;
        }
        else {
            newDoublyLinkedNode.next = this.head;
            this.head.previous = newDoublyLinkedNode;
            this.head = newDoublyLinkedNode;
        }
        this.length++;
    };
    DoublyLinkedList.prototype.insert = function (index, value) {
        if (!Number.isInteger(index) || index < 0 || index > this.length + 1) {
            console.log("Invalid index. Current length is ".concat(this.length, "."));
            return this;
        }
        if (index === 0) {
            this.prepend(value);
            return this;
        }
        if (index === this.length) {
            this.append(value);
            return this;
        }
        var newDoublyLinkedNode = new DoublyLinkedNode(value);
        var previousDoublyLinkedNode = this.head;
        for (var k = 0; k < index - 1; k++) {
            previousDoublyLinkedNode = previousDoublyLinkedNode.next;
        }
        var nextDoublyLinkedNode = previousDoublyLinkedNode.next;
        newDoublyLinkedNode.next = nextDoublyLinkedNode;
        previousDoublyLinkedNode.next = newDoublyLinkedNode;
        newDoublyLinkedNode.previous = previousDoublyLinkedNode;
        nextDoublyLinkedNode.previous = newDoublyLinkedNode;
        this.length++;
    };
    DoublyLinkedList.prototype.addAfter = function (node, value) {
        if (node == null) {
            this.append(value);
            return;
        }
        var newDoublyLinkedNode = new DoublyLinkedNode(value);
        var nextDoublyLinkedNode = node.next;
        newDoublyLinkedNode.next = nextDoublyLinkedNode;
        node.next = newDoublyLinkedNode;
        newDoublyLinkedNode.previous = node;
        if (nextDoublyLinkedNode != null)
            nextDoublyLinkedNode.previous = newDoublyLinkedNode;
        if (newDoublyLinkedNode.next == null)
            this.tail = newDoublyLinkedNode;
        if (newDoublyLinkedNode.previous == null)
            this.head = newDoublyLinkedNode;
        this.length++;
    };
    DoublyLinkedList.prototype.addBefore = function (node, value) {
        if (node == null) {
            this.prepend(value);
            return;
        }
        var newDoublyLinkedNode = new DoublyLinkedNode(value);
        var nodeToAppendTo = node.previous;
        if (nodeToAppendTo != null)
            nodeToAppendTo.next = newDoublyLinkedNode;
        node.previous = newDoublyLinkedNode;
        newDoublyLinkedNode.previous = nodeToAppendTo;
        newDoublyLinkedNode.next = node;
        if (newDoublyLinkedNode.next == null)
            this.tail = newDoublyLinkedNode;
        if (newDoublyLinkedNode.previous == null)
            this.head = newDoublyLinkedNode;
        this.length++;
    };
    DoublyLinkedList.prototype.removeFirst = function () {
        this.remove(0);
    };
    DoublyLinkedList.prototype.removeLast = function () {
        this.remove(this.length);
    };
    DoublyLinkedList.prototype.remove = function (index) {
        if (!Number.isInteger(index) || index < 0 || index > this.length) {
            console.log("Invalid index. Current length is ".concat(this.length, "."));
            return this;
        }
        if (index === 0) {
            this.head = this.head.next;
            this.head.previous = null;
            this.length--;
            return this;
        }
        if (index === this.length - 1) {
            this.tail = this.tail.previous;
            this.tail.next = null;
            this.length--;
            return this;
        }
        var previousDoublyLinkedNode = this.head;
        for (var k = 0; k < index - 1; k++) {
            previousDoublyLinkedNode = previousDoublyLinkedNode.next;
        }
        var deleteDoublyLinkedNode = previousDoublyLinkedNode.next;
        var nextDoublyLinkedNode = deleteDoublyLinkedNode.next;
        previousDoublyLinkedNode.next = nextDoublyLinkedNode;
        nextDoublyLinkedNode.previous = previousDoublyLinkedNode;
        this.length--;
        return this;
    };
    return DoublyLinkedList;
}());
exports.DoublyLinkedList = DoublyLinkedList;
