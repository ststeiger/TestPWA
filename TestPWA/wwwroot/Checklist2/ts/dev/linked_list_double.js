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
        this.head = new DoublyLinkedNode(value);
        this.length = 1;
        this.tail = this.head;
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
        this.tail.next = newDoublyLinkedNode;
        newDoublyLinkedNode.previous = this.tail;
        this.tail = newDoublyLinkedNode;
        this.length++;
        this.printList();
    };
    DoublyLinkedList.prototype.prepend = function (value) {
        var newDoublyLinkedNode = new DoublyLinkedNode(value);
        newDoublyLinkedNode.next = this.head;
        this.head.previous = newDoublyLinkedNode;
        this.head = newDoublyLinkedNode;
        this.length++;
        this.printList();
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
        this.printList();
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
            this.printList();
            return this;
        }
        if (index === this.length - 1) {
            this.tail = this.tail.previous;
            this.tail.next = null;
            this.length--;
            this.printList();
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
        this.printList();
        return this;
    };
    return DoublyLinkedList;
}());
exports.DoublyLinkedList = DoublyLinkedList;
function foo() {
    var myDoublyList = new DoublyLinkedList(10);
    myDoublyList.append(5);
    myDoublyList.append(16);
    myDoublyList.prepend(1);
    myDoublyList.insert(2, 99);
    myDoublyList.insert(20, 88);
    myDoublyList.insert(5, 80);
    myDoublyList.insert(0, 80);
    myDoublyList.remove(0);
    myDoublyList.remove(5);
    myDoublyList.remove(2);
}
