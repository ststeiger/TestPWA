"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.InsertableStackFrame = exports.InsertableStack = void 0;
var dbl = require("./linked_list_double.js");
var InsertableStack = (function () {
    function InsertableStack() {
        this.items = new dbl.DoublyLinkedList();
        this.push = this.push.bind(this);
        this.pop = this.pop.bind(this);
        this.dequeue = this.dequeue.bind(this);
        this.peek = this.peek.bind(this);
        this.debugDisplay = this.debugDisplay.bind(this);
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
    InsertableStack.prototype.insertAfterCurrent = function (data) {
        if (this.m_markedNode == null) {
            this.items.prepend(data);
            return;
        }
        this.items.addAfter(this.m_markedNode, data);
    };
    InsertableStack.prototype.actual = function () {
        var cnt = 0;
        var currentList = this.items.head;
        while (currentList !== null) {
            cnt++;
            currentList = currentList.next;
        }
        return cnt;
    };
    InsertableStack.prototype.debugDisplay = function (fn) {
        fn = fn || function (xx) {
            if (xx == null)
                return null;
            return String(xx);
        };
        var str = [];
        var currentList = this.items.head;
        while (currentList !== null) {
            str.push(fn(currentList.value));
            currentList = currentList.next;
        }
        return str.join(" ");
    };
    return InsertableStack;
}());
exports.InsertableStack = InsertableStack;
var InsertableStackFrame = (function () {
    function InsertableStackFrame(item, hasChildren, level) {
        level = level || 0;
        this.data = item;
        this.level = level;
        this.hasChildren = hasChildren;
    }
    return InsertableStackFrame;
}());
exports.InsertableStackFrame = InsertableStackFrame;
var sillyIterator = (function () {
    function sillyIterator() {
    }
    sillyIterator.useIterateThroughAnything = function (rootNode, getChildren) {
        var tbl = document.querySelectorAll("table.Excel").item(0);
        sillyIterator.iterateThroughAnything(tbl, function (x) {
            return Array.prototype.slice.call(x.children);
        });
        sillyIterator.iterateThroughAnything(tbl, function (x) {
            return Array.prototype.slice.call(x.childNodes);
        });
    };
    sillyIterator.iterateThroughAnything = function (rootNode, getChildren) {
        var stack = new InsertableStack();
        function hasChildren(someNode) {
            return (getChildren(someNode).length > 0);
        }
        stack.push(new InsertableStackFrame(rootNode, hasChildren(rootNode)));
        while (!stack.isEmpty) {
            var node = stack.pop();
            if (node.hasChildren) {
                stack.markCurrent();
                var entries = getChildren(node.data);
                for (var i = 0; i < entries.length; ++i) {
                    var entry = entries[i];
                    var hasChild = hasChildren(entry);
                    stack.insertAfterCurrent(new InsertableStackFrame(entry, hasChild, hasChild ? node.level + 1 : node.level));
                }
                stack.unmarkCurrent();
            }
            if (node.hasChildren) {
                console.log("directory: ");
            }
            console.log("node.data [lvl " + node.level.toString() + "]: ", node.data);
        }
    };
    sillyIterator.iterateThroughNodes = function (rootNode) {
        var stack = new InsertableStack();
        function hasChildren(someNode) {
            return (someNode.childNodes.length > 0);
        }
        function getChildren(baseNode) {
            return baseNode.childNodes;
        }
        function uuidv4() {
            return "10000000-1000-4000-8000-100000000000".replace(/[018]/g, function (b) {
                var c = parseInt(b);
                return (c ^ ((window.crypto || window.msCrypto)).getRandomValues(new Uint8Array(1))[0] & 15 >> c / 4).toString(16);
            });
        }
        stack.push(new InsertableStackFrame(rootNode, hasChildren(rootNode)));
        function getNodeData(currentElement, isDir) {
            var checklistData = {
                "uuid": currentElement.id,
                "parent_uuid": (currentElement.parentElement ? currentElement.parentElement.id : null),
                "tagName": currentElement.tagName,
                "properties": null,
                "children": isDir ? [] : null,
                "sort": 0
            };
            return checklistData;
        }
        var currentParent = null;
        while (!stack.isEmpty) {
            var node = stack.pop();
            if (node.hasChildren) {
                stack.markCurrent();
                var entries = getChildren(node.data);
                for (var i = 0; i < entries.length; ++i) {
                    var entry = entries.item(i);
                    var hasChild = hasChildren(entry);
                    stack.insertAfterCurrent(new InsertableStackFrame(entry, hasChild, hasChild ? node.level + 1 : node.level));
                }
                stack.unmarkCurrent();
            }
            console.log((node.hasChildren ? "directory: " : "") + "node.data [lvl " + node.level.toString() + "]: ", node.data);
            if (node.data.nodeType === Node.ELEMENT_NODE) {
                var id = node.data.getAttribute("id");
                if (id == null || id == "null")
                    node.data.setAttribute("id", uuidv4());
                id = node.data.getAttribute("id");
                if (node.hasChildren) {
                    var lastParent = currentParent;
                    currentParent = getNodeData(node, node.hasChildren);
                    currentParent.parent = lastParent;
                    if (lastParent != null)
                        lastParent.children.push(currentParent);
                }
                else {
                    var noob = getNodeData(node, node.hasChildren);
                    noob.parent = currentParent;
                    currentParent.children.push(noob);
                }
            }
        }
        console.log(currentParent);
    };
    sillyIterator.iterateThroughElements = function (rootElement) {
        var stack = new InsertableStack();
        function hasChildren(someElement) {
            return (someElement.children.length > 0);
        }
        function getChildren(baseElement) {
            return baseElement.children;
        }
        stack.push(new InsertableStackFrame(rootElement, hasChildren(rootElement)));
        while (!stack.isEmpty) {
            var node = stack.pop();
            if (node.hasChildren) {
                stack.markCurrent();
                var entries = getChildren(node.data);
                for (var i = 0; i < entries.length; ++i) {
                    var entry = entries.item(i);
                    var hasChild = hasChildren(entry);
                    stack.insertAfterCurrent(new InsertableStackFrame(entry, hasChild, hasChild ? node.level + 1 : node.level));
                }
                stack.unmarkCurrent();
            }
            if (node.hasChildren) {
                console.log("directory: ");
            }
            console.log("node.data [lvl " + node.level.toString() + "]: ", node.data);
        }
    };
    sillyIterator.InsertableStackIterateDirectory2 = function (rootPath) {
        var stack = new InsertableStack();
        var context = {
            Response: {
                Write: function (x) { console.log(x); }
            }
        };
        function hasChildren(rootPath) {
            return false;
        }
        function getChildren(rootPath) {
            return [];
        }
        stack.push(new InsertableStackFrame(rootPath, hasChildren(rootPath)));
        while (!stack.isEmpty) {
            var node = stack.pop();
            if (node.level > 5)
                continue;
            if (node.hasChildren) {
                stack.markCurrent();
                var entries = getChildren(node.data);
                for (var i = 0; i < entries.length; ++i) {
                    var withChild = hasChildren(entries[i]);
                    stack.insertAfterCurrent(new InsertableStackFrame(entries[i], withChild, withChild ? node.level + 1 : node.level));
                }
                stack.unmarkCurrent();
            }
            if (node.hasChildren)
                context.Response.Write("Directory:  ");
            context.Response.Write(node.data);
            context.Response.Write("   [");
            context.Response.Write(node.level);
            context.Response.Write("]");
            context.Response.Write("\r\n");
        }
    };
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
    sillyIterator.prototype.foo = function () {
        var checklistData = this.collectHtml(document.querySelector("table"));
    };
    sillyIterator.prototype.isImportSupported = function () {
        var supported = false;
        try {
            new Function("try { import('data:text/javascript;base64,Cg==').catch(function() {}); } catch (e) { }")();
            supported = true;
        }
        catch (e) { }
        return supported;
    };
    sillyIterator.prototype.isImportSupportedAsync = function () {
        return __awaiter(this, void 0, void 0, function () {
            return __generator(this, function (_a) {
                try {
                    return [2, new Function("return import('data:text/javascript;base64,Cg==').then(function(r){ return true; })")()];
                }
                catch (e) {
                    return [2, Promise.resolve(false)];
                }
                return [2];
            });
        });
    };
    sillyIterator.prototype.collectHtml = function (root) {
        var currentNode;
        var ni = document.createTreeWalker(root, NodeFilter.SHOW_ELEMENT, this.createVisibleListNodesFilter());
        ni.currentNode = root;
        var a = [];
        var currentRow = 0;
        var startColumn = 0;
        var endColumn = 0;
        function _getProperties(el) {
            var arr = [];
            for (var i = 0, atts = el.attributes, n = atts.length; i < n; i++) {
                var a_1 = atts[i].nodeName;
                arr.push([a_1, el.getAttribute(a_1)]);
            }
            return arr;
        }
        var checklistData = {
            "uuid": "rootUid()",
            "parent_uuid": null,
            "tagName": root.nodeName,
            "properties": _getProperties(root),
            "children": [],
            "sort": 0
        };
        while (currentNode = ni.nextNode()) {
            var guid = "uuid.newGuid()";
            if ("tr" === currentNode.nodeName) {
                currentRow += 1;
            }
            else if ("td" === currentNode.nodeName) {
            }
            if (currentNode.nodeName.toLowerCase() === "td") {
                var inputSort = 0;
                var children = Array.prototype.slice.call(currentNode.childNodes);
                for (var i = 0; i < children.length; ++i) {
                    var tagName = children[i].nodeName.toLowerCase();
                    if (children[i].nodeType === Node.ELEMENT_NODE
                        && (tagName == "input" || tagName == "textarea")) {
                    }
                }
            }
            a.push(currentNode);
        }
        return checklistData;
    };
    return sillyIterator;
}());
