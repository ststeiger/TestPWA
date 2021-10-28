"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.iterateOverStructure_FIFO = exports.Queue = void 0;
var Queue = (function () {
    function Queue() {
        this.items = [];
    }
    Queue.prototype.enqueue = function (e) {
        this.items.push(e);
    };
    Queue.prototype.dequeue = function () {
        return this.items.shift();
    };
    Object.defineProperty(Queue.prototype, "isEmpty", {
        get: function () {
            return this.items.length == 0;
        },
        enumerable: false,
        configurable: true
    });
    Queue.prototype.peek = function () {
        return !this.isEmpty ? this.items[0] : undefined;
    };
    Object.defineProperty(Queue.prototype, "length", {
        get: function () {
            return this.items.length;
        },
        enumerable: false,
        configurable: true
    });
    return Queue;
}());
exports.Queue = Queue;
function iterateOverStructure_FIFO(container) {
    var queue = new Queue();
    queue.enqueue(container);
    while (!queue.isEmpty) {
        var element = queue.dequeue();
        console.log(element);
        var children = element.children;
        for (var i = 0; i < children.length; ++i) {
            if (true) {
                queue.enqueue(children[i]);
                continue;
            }
        }
    }
}
exports.iterateOverStructure_FIFO = iterateOverStructure_FIFO;
