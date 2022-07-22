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
    function InsertableStackFrame(item, hasChildren, level, recursionData) {
        level = level || 0;
        this.data = item;
        this.level = level;
        this.hasChildren = hasChildren;
        this.recursionData = recursionData;
    }
    return InsertableStackFrame;
}());
exports.InsertableStackFrame = InsertableStackFrame;
var sillyIterator = (function () {
    function sillyIterator() {
    }
    sillyIterator.prototype.absolute = function (base, relative) {
        var stack = base.split("/"), parts = relative.split("/");
        stack.pop();
        for (var i = 0; i < parts.length; i++) {
            if (parts[i] == ".")
                continue;
            if (parts[i] == "..")
                stack.pop();
            else
                stack.push(parts[i]);
        }
        return stack.join("/");
    };
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
    sillyIterator.compareStrings = function (string1, string2, ignoreCase, useLocale) {
        if (string1 == null && string2 == null)
            return true;
        if (string1 == null || string2 == null)
            return false;
        if (ignoreCase) {
            if (useLocale) {
                string1 = string1.toLocaleLowerCase();
                string2 = string2.toLocaleLowerCase();
            }
            else {
                string1 = string1.toLowerCase();
                string2 = string2.toLowerCase();
            }
        }
        return string1 === string2;
    };
    sillyIterator.objectArrayToXml = function (obj, pretty) {
        function _xmlAttributeEscape(inputString) {
            var output = [];
            for (var i = 0; i < inputString.length; ++i) {
                switch (inputString[i]) {
                    case '&':
                        output.push("&amp;");
                        break;
                    case '"':
                        output.push("&quot;");
                        break;
                    case "<":
                        output.push("&lt;");
                        break;
                    case ">":
                        output.push("&gt;");
                        break;
                    default:
                        output.push(inputString[i]);
                }
            }
            return output.join("");
        }
        var xml = [];
        if (pretty == null)
            pretty = true;
        xml.push("<?xml version=\"1.0\" encoding=\"utf-16\"?>");
        if (pretty)
            xml.push("\r\n");
        xml.push("<table xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">");
        xml.push("\r\n");
        for (var i = 0; i < obj.length; ++i) {
            if (pretty)
                xml.push("  ");
            xml.push("<row>");
            if (pretty)
                xml.push("\r\n");
            for (var key in obj[i]) {
                if (obj[i].hasOwnProperty(key)) {
                    var value = obj[i][key];
                    if (pretty)
                        xml.push("    ");
                    if (value == null)
                        xml.push("<" + key + " xsi:nil=\"true\" />");
                    else
                        xml.push("<" + key + ">");
                    xml.push(_xmlAttributeEscape(value));
                    if (value != null) {
                        xml.push("</" + key + ">");
                    }
                    if (pretty)
                        xml.push("\r\n");
                }
            }
            if (pretty)
                xml.push("  ");
            xml.push("</row>");
            if (pretty)
                xml.push("\r\n");
        }
        xml.push("</table>");
        var result = xml.join("");
        return result;
    };
    sillyIterator.serializeMe = function () {
        var x = [{ "PRO_UID": "7E7BED97-6F65-4827-8829-001676E3D03B", "PRO_Name": "align", "PRO_Value": "left", "PRO_ELE_UID": "F96C3755-89CD-466D-93F7-D00E85FDF05E" }, { "PRO_UID": "B4B41211-62BC-42C4-B420-00209B8A2C8F", "PRO_Name": "class", "PRO_Value": "slimBlackBorder", "PRO_ELE_UID": "671DB8C8-927C-4720-B17E-0EDD9C01B7AD" }, { "PRO_UID": "0CAF4193-AC63-432D-9579-002AA68DAC35", "PRO_Name": "align", "PRO_Value": "left", "PRO_ELE_UID": "FED37EA5-921D-4940-9504-2BF913EA0453" }];
        var prettifyXml = function (sourceXml) {
            var xmlDoc = new DOMParser().parseFromString(sourceXml, 'application/xml');
            var xsltDoc = new DOMParser().parseFromString([
                '<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform">',
                '  <xsl:strip-space elements="*"/>',
                '  <xsl:template match="para[content-style][not(text())]">',
                '    <xsl:value-of select="normalize-space(.)"/>',
                '  </xsl:template>',
                '  <xsl:template match="node()|@*">',
                '    <xsl:copy><xsl:apply-templates select="node()|@*"/></xsl:copy>',
                '  </xsl:template>',
                '  <xsl:output indent="yes"/>',
                '</xsl:stylesheet>',
            ].join('\n'), 'application/xml');
            var xsltProcessor = new XSLTProcessor();
            xsltProcessor.importStylesheet(xsltDoc);
            var resultDoc = xsltProcessor.transformToDocument(xmlDoc);
            var resultXml = new XMLSerializer().serializeToString(resultDoc);
            resultXml = '<?xml version="1.0" encoding="utf-16"?>\r\n' + resultXml;
            return resultXml;
        };
        var xmlNs = 'http://www.w3.org/2001/XMLSchema';
        var xsiNs = 'http://www.w3.org/2001/XMLSchema-instance';
        var doc = document.implementation.createDocument(null, 'table', null);
        var tableElement = doc.documentElement;
        tableElement.setAttributeNS('http://www.w3.org/2000/xmlns/', 'xmlns:xsi', xsiNs);
        for (var i = 0; i < x.length; ++i) {
            var rowElement = doc.createElement('row');
            for (var key in x[i]) {
                if (x[i].hasOwnProperty(key)) {
                    var value = x[i][key];
                    var column = doc.createElement(key);
                    if (value == null)
                        column.setAttributeNS(xsiNs, 'xsi:nil', 'true');
                    else
                        column.textContent = value;
                    rowElement.appendChild(column);
                }
            }
            tableElement.appendChild(rowElement);
        }
        var pi = doc.createProcessingInstruction('xml', 'version="1.0" encoding="UTF-16"');
        doc.insertBefore(pi, doc.firstChild);
        var serializer = new XMLSerializer();
        var xmlStr = serializer.serializeToString(doc);
        if (window.XSLTProcessor)
            xmlStr = prettifyXml(xmlStr);
        console.log(xmlStr);
    };
    sillyIterator._padStart = function (str, targetLength, padString) {
        targetLength = Math.floor(targetLength) || 0;
        if (targetLength < str.length)
            return String(str);
        padString = padString ? String(padString) : " ";
        var pad = "";
        var len = targetLength - str.length;
        var i = 0;
        while (pad.length < len) {
            if (!padString[i]) {
                i = 0;
            }
            pad += padString[i];
            i++;
        }
        return pad + String(str).slice(0);
    };
    sillyIterator._padEnd = function (str, targetLength, padString) {
        targetLength = Math.floor(targetLength) || 0;
        if (targetLength < str.length)
            return String(str);
        padString = padString ? String(padString) : " ";
        var pad = "";
        var len = targetLength - str.length;
        var i = 0;
        while (pad.length < len) {
            if (!padString[i]) {
                i = 0;
            }
            pad += padString[i];
            i++;
        }
        return String(str).slice(0) + pad;
    };
    sillyIterator.iterateThroughNodes = function (rootNode, recursionConditions) {
        var T_ChecklistElements = [];
        var stack = new InsertableStack();
        var rootNodeData = recursionConditions.getNodeData(rootNode, recursionConditions.hasChildren(rootNode));
        rootNodeData.sort = 0;
        rootNodeData.recSort = sillyIterator._padStart(rootNodeData.sort.toString(), 10, "0");
        rootNodeData.parent_uuid = null;
        var rootFrame = new InsertableStackFrame(rootNode, recursionConditions.hasChildren(rootNode), 0, rootNodeData);
        rootFrame.localSort = 0;
        stack.push(rootFrame);
        var globalSort = 0;
        var root = null;
        while (!stack.isEmpty) {
            var node = stack.pop();
            node.globalSort = globalSort;
            if (root == null) {
                node.recursionData.parent_uuid = null;
                root = node;
            }
            if (node.hasChildren) {
                stack.markCurrent();
                var entries = recursionConditions.getChildren(node.data);
                for (var i = 0; i < entries.length; ++i) {
                    var entry = entries.item(i);
                    var hasChild = recursionConditions.hasChildren(entry);
                    var nodeData = recursionConditions.getNodeData(entry, recursionConditions.hasChildren(entry));
                    nodeData.sort = i;
                    nodeData.recSort = node.recursionData.recSort + "." + sillyIterator._padStart(i.toString(), 10, "0");
                    node.recursionData.children.push(nodeData);
                    var childFrame = new InsertableStackFrame(entry, hasChild, hasChild ? node.level + 1 : node.level, nodeData);
                    childFrame.localSort = i;
                    stack.insertAfterCurrent(childFrame);
                }
                stack.unmarkCurrent();
            }
            var record = {
                ELE_UID: node.recursionData.uuid,
                ELE_Parent_UID: node.recursionData.parent_uuid,
                ELE_TagName: node.recursionData.tagName,
                ELE_Sort: node.recursionData.sort,
                ELE_RecSort: node.recursionData.recSort,
            };
            if (node.data.nodeType === Node.ELEMENT_NODE) {
                if (sillyIterator.compareStrings(node.data.nodeName, "td", true)) {
                    record.ELE_InnerHtml = node.data.innerHTML;
                }
            }
            else if (node.data.nodeType === Node.TEXT_NODE) {
                record.ELE_InnerHtml = node.data.textContent;
            }
            T_ChecklistElements.push(record);
            ++globalSort;
        }
        console.log("T_ChecklistElements: ", JSON.stringify(T_ChecklistElements, null, 2));
        console.log("recursionData: ", root.recursionData);
    };
    sillyIterator.iterateThroughNodes2 = function (rootNode) {
        sillyIterator.iterateThroughNodes(rootNode, {
            hasChildren: function (someNode) {
                return (someNode.childNodes.length > 0);
            },
            getChildren: function (baseNode) {
                return baseNode.childNodes;
            },
            getNodeData: function (currentNode, isDir) {
                function getDataSet(el) {
                    el.setAttribute("data-foo", "hello");
                    return el.dataset;
                }
                function getAttributes(node) {
                    var arr = [];
                    if (node.nodeType === Node.ELEMENT_NODE) {
                        for (var i = 0, atts = node.attributes, n = atts.length; i < n; i++) {
                            var a = atts[i].nodeName;
                            arr.push([a, node.getAttribute(a)]);
                        }
                    }
                    return arr;
                }
                function getAllProps(node) {
                    var props = [];
                    for (var key in node) {
                        props.push([key, node[key]]);
                    }
                    return props;
                }
                function getCustomProps(node) {
                    var props = [];
                    for (var key in node) {
                        if (node.hasOwnProperty(key))
                            props.push([key, node[key]]);
                    }
                    return props;
                }
                function getDefaultProps(node) {
                    var props = [];
                    for (var key in node) {
                        if (!node.hasOwnProperty(key))
                            props.push([key, node[key]]);
                    }
                    return props;
                }
                function _newid() {
                    return "10000000-1000-4000-8000-100000000000".replace(/[018]/g, function (b) {
                        var c = parseInt(b);
                        return (c ^ ((window.crypto || window.msCrypto)).getRandomValues(new Uint8Array(1))[0] & 15 >> c / 4).toString(16);
                    });
                }
                function _uidToLower(text) {
                    if (text == null || text == "null")
                        return _newid().toLowerCase();
                    if (text.charAt(0) == "_")
                        text = text.substr(1);
                    return text.toLowerCase();
                }
                if (currentNode.nodeType === Node.ELEMENT_NODE) {
                    var id = currentNode.getAttribute("id");
                    currentNode.setAttribute("id", "_" + _uidToLower(id));
                }
                var checklistData = {
                    "uuid": currentNode.id,
                    "parent_uuid": (currentNode.parentElement ? currentNode.parentElement.id : null),
                    "tagName": currentNode.nodeName,
                    "properties": getAttributes(currentNode),
                    "customProperties": getCustomProps(currentNode),
                    "children": isDir ? [] : null,
                    "sort": 0
                };
                return checklistData;
            }
        });
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
                    node.recursionData.sort;
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
