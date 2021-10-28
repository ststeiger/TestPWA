"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.iterateOverStructure_LIFO = exports.Stack = void 0;
var Stack = (function () {
    function Stack() {
        this.items = [];
    }
    Stack.prototype.push = function (element) {
        this.items.push(element);
    };
    Stack.prototype.pop = function () {
        if (this.items.length == 0) {
            throw new Error("Stack underflow");
        }
        return this.items.pop();
    };
    Stack.prototype.peek = function () {
        return this.items[this.items.length - 1];
    };
    Object.defineProperty(Stack.prototype, "isEmpty", {
        get: function () {
            return this.items.length == 0;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(Stack.prototype, "count", {
        get: function () {
            return this.items.length;
        },
        enumerable: false,
        configurable: true
    });
    Stack.prototype.debugDisplay = function () {
        var str = [];
        for (var i = 0; i < this.items.length; i++)
            str.push(String(this.items[i]));
        return str.join(" ");
    };
    return Stack;
}());
exports.Stack = Stack;
function postFixEvaluation(exp) {
    var stack = new Stack();
    for (var i = 0; i < exp.length; i++) {
        var c = exp[i];
        if (!isNaN(c))
            stack.push(c.charCodeAt(0) - '0'.charCodeAt(0));
        else {
            var val1 = stack.pop();
            var val2 = stack.pop();
            switch (c) {
                case '+':
                    stack.push(val2 + val1);
                    break;
                case '-':
                    stack.push(val2 - val1);
                    break;
                case '/':
                    stack.push(val2 / val1);
                    break;
                case '*':
                    stack.push(val2 * val1);
                    break;
            }
        }
    }
    return stack.pop();
}
function iterateOverStructure_LIFO(container) {
    var stack = new Stack();
    stack.push(container);
    while (!stack.isEmpty) {
        var element = stack.pop();
        console.log(element);
        var children = element.children;
        for (var i = 0; i < children.length; ++i) {
            if (true) {
                stack.push(children[i]);
                continue;
            }
        }
    }
}
exports.iterateOverStructure_LIFO = iterateOverStructure_LIFO;
