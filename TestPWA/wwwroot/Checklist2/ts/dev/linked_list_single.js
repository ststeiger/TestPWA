"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.SinglyLinkedList = exports.SinglyLinkedNode = void 0;
var SinglyLinkedNode = (function () {
    function SinglyLinkedNode(element) {
        this.value = element;
        this.next = null;
    }
    return SinglyLinkedNode;
}());
exports.SinglyLinkedNode = SinglyLinkedNode;
var SinglyLinkedList = (function () {
    function SinglyLinkedList() {
        this.head = null;
        this.size = 0;
    }
    SinglyLinkedList.prototype.add = function (element) {
        var node = new SinglyLinkedNode(element);
        var current;
        if (this.head == null)
            this.head = node;
        else {
            current = this.head;
            while (current.next) {
                current = current.next;
            }
            current.next = node;
        }
        this.size++;
    };
    SinglyLinkedList.prototype.insertAt = function (element, index) {
        if (index < 0 || index > this.size)
            return console.log("Please enter a valid index.");
        else {
            var node = new SinglyLinkedNode(element);
            var curr = void 0, prev = void 0;
            curr = this.head;
            if (index == 0) {
                node.next = this.head;
                this.head = node;
            }
            else {
                curr = this.head;
                var it = 0;
                while (it < index) {
                    it++;
                    prev = curr;
                    curr = curr.next;
                }
                node.next = curr;
                prev.next = node;
            }
            this.size++;
        }
    };
    SinglyLinkedList.prototype.removeFrom = function (index) {
        if (index < 0 || index >= this.size)
            return console.log("Please Enter a valid index");
        else {
            var curr = void 0, prev = void 0, it = 0;
            curr = this.head;
            prev = curr;
            if (index === 0) {
                this.head = curr.next;
            }
            else {
                while (it < index) {
                    it++;
                    prev = curr;
                    curr = curr.next;
                }
                prev.next = curr.next;
            }
            this.size--;
            return curr.value;
        }
    };
    SinglyLinkedList.prototype.removeElement = function (element) {
        var current = this.head;
        var prev = null;
        while (current != null) {
            if (current.value === element) {
                if (prev == null) {
                    this.head = current.next;
                }
                else {
                    prev.next = current.next;
                }
                this.size--;
                return current.value;
            }
            prev = current;
            current = current.next;
        }
        return -1;
    };
    SinglyLinkedList.prototype.indexOf = function (element) {
        var count = 0;
        var current = this.head;
        while (current != null) {
            if (current.value === element)
                return count;
            count++;
            current = current.next;
        }
        return -1;
    };
    SinglyLinkedList.prototype.isEmpty = function () {
        return this.size == 0;
    };
    SinglyLinkedList.prototype.size_of_list = function () {
        console.log(this.size);
    };
    SinglyLinkedList.prototype.printList = function () {
        var curr = this.head;
        var arr = [];
        while (curr) {
            arr.push(String(curr.value));
            curr = curr.next;
        }
        console.log(arr.join(" "));
    };
    return SinglyLinkedList;
}());
exports.SinglyLinkedList = SinglyLinkedList;
