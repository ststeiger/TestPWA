"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.iterateOverStructure = exports.collectSaveData = exports.constructRecursiveDataStructure = exports.assembleStructure = exports.collectStructure = void 0;
var autobind_autotrace = require("./autobind_autotrace.js");
var uuid = require("./uuid.js");
var utils = require("./string_utils.js");
var _ = {
    "ab": autobind_autotrace
};
function _getProperties(el) {
    var arr = [];
    for (var i = 0, atts = el.attributes, n = atts.length; i < n; i++) {
        var a = atts[i].nodeName;
        arr.push([a, el.getAttribute(a)]);
    }
    return arr;
}
function collectStructure(p, parent, sort) {
    if (p == null)
        return null;
    parent = parent || null;
    sort = sort || 0;
    var children = Array.prototype.slice.call(p.childNodes);
    var guid = uuid.newGuid();
    var checklistData = {
        "uuid": guid,
        "parent_uuid": parent,
        "tagName": p.nodeName,
        "properties": _getProperties(p),
        "children": [],
        "sort": sort
    };
    if (p.nodeName.toLowerCase() === "td") {
        checklistData.innerHtml = p.innerHTML;
    }
    else if (children.length) {
        var childSort = 0;
        for (var i = 0; i < children.length; i++) {
            var cur = children[i];
            if (cur.nodeType === Node.TEXT_NODE) {
            }
            else if (cur.nodeType === Node.ELEMENT_NODE) {
                var ret = collectStructure(cur, guid, childSort++);
                checklistData.children.push(ret);
            }
            else {
                console.log("unhandeld node", cur.nodeType);
            }
        }
    }
    return checklistData;
}
exports.collectStructure = collectStructure;
function _createElement(data) {
    var el = document.createElement(data.tagName);
    if (data.uuid != null) {
        el.setAttribute("id", data.uuid.toLowerCase());
        el.id = data.uuid.toLowerCase();
        var tagName = data.tagName.toLowerCase();
        if (tagName === "input" || tagName === "textarea") {
            el.setAttribute("name", el.id);
        }
    }
    var isVertical = false;
    if (data.properties) {
        for (var i = 0; i < data.properties.length; ++i) {
            if ("class" == data.properties[i][0] && String(data.properties[i][1]).indexOf("verticalColumn") != -1) {
                isVertical = true;
            }
            if (null != data.properties[i][0])
                el.setAttribute(data.properties[i][0], data.properties[i][1]);
        }
    }
    if (data.innerHtml) {
        el.innerHTML = data.innerHtml;
        var iPAD = String(navigator.userAgent).toLowerCase().indexOf("ipad") != -1;
        if (isVertical && iPAD) {
            var font = "Arial";
            var txt = el.textContent || el.innerText;
            el.innerHTML = "";
            if ("Wartungs oder Prüfintervall [Jahr]" === txt)
                txt = "Wartungs oder\r\nPrüfintervall [Jahr]";
            var img = document.createElement("IMG");
            img.setAttribute("src", "../cgi-bin/GenerateImage.ashx?no_cache=1636450422429&bgcolor=%23FFF&fontFamily=" + encodeURIComponent(font) + "&fontSize=15&rotate=true&text=" + encodeURIComponent(txt));
            img.setAttribute("alt", txt);
            el.appendChild(img);
        }
    }
    return el;
}
function assembleStructure(container, parent) {
    parent = parent || document.createDocumentFragment();
    var newParentElement = _createElement(container);
    for (var i = 0; i < container.children.length; ++i) {
        assembleStructure(container.children[i], newParentElement);
    }
    parent.appendChild(newParentElement);
    return parent;
}
exports.assembleStructure = assembleStructure;
function constructRecursiveDataStructure(elements, properties, parentUID, obj, lvl) {
    parentUID = parentUID || "null";
    obj = obj || { "rootNode": true };
    obj.children = obj.children || [];
    lvl = lvl || 0;
    var groupedElements = elements.groupBy("ELE_Parent_UID");
    var childElements = groupedElements.getGroup(parentUID);
    for (var i = 0; i < childElements.rowCount; ++i) {
        var thisRow = childElements.row(i);
        var props = [];
        var propArray = properties.getGroup(thisRow.ELE_UID);
        for (var j = 0; j < propArray.rowCount; ++j) {
            var currentItem = propArray.row(j);
            props.push([currentItem.PRO_Name, currentItem.PRO_Value]);
        }
        var childData = {
            "uuid": thisRow.ELE_UID,
            "parent_uuid": thisRow.ELE_Parent_UID,
            "tagName": thisRow.ELE_TagName,
            "sort": thisRow.ELE_Sort,
            "lvl": lvl,
            "properties": props,
            "innerHtml": thisRow.ELE_InnerHtml
        };
        var child = constructRecursiveDataStructure(elements, properties, thisRow.ELE_UID, childData, lvl + 1);
        obj.children.push(child);
    }
    if (lvl === 0 && obj.children.length === 1)
        return obj.children[0];
    return obj;
}
exports.constructRecursiveDataStructure = constructRecursiveDataStructure;
function collectSaveData(p, cls_uid) {
    if (p == null)
        return null;
    var checklistData = [];
    var nodeName = p.nodeName.toLowerCase();
    if (p.nodeType === Node.ELEMENT_NODE && ("input" === nodeName || "textarea" === nodeName)) {
        var uuid_1 = p.getAttribute("id") || "unknown";
        var type = p.getAttribute("type") || "";
        var value = null;
        if ("checkbox" === type.toLowerCase()) {
            value = p.checked.toString().toLowerCase();
        }
        else if ("text" === type.toLowerCase()) {
            value = p.value;
            value = utils.normalizeNewLines(value);
        }
        else if ("textarea" === nodeName) {
            value = p.value;
            value = utils.normalizeNewLines(value);
            type = "textarea";
        }
        return [{
                "uuid": uuid_1,
                "value": value,
                "__cls_uid": cls_uid
            }];
    }
    else if (p.children.length) {
        for (var i = 0; i < p.children.length; i++) {
            var ret = collectSaveData(p.children[i], cls_uid);
            for (var j = 0; j < ret.length; ++j) {
                checklistData.push(ret[j]);
            }
        }
    }
    return checklistData;
}
exports.collectSaveData = collectSaveData;
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
function makeAssociativeArray(properties, caseSensitive) {
    caseSensitive = caseSensitive || false;
    var obj = {};
    for (var i = 0; i < properties.length; ++i) {
        var key = properties[i][0];
        if (!key)
            continue;
        if (!caseSensitive)
            key = key.toLowerCase();
        obj[key] = properties[i][1];
    }
    return obj;
}
function getExcelColumnName(columnNumber) {
    var columnName = "";
    while (columnNumber > 0) {
        var modulo = (columnNumber - 1) % 26;
        columnName = String.fromCharCode('A'.charCodeAt(0) + modulo) + columnName;
        columnNumber = Math.floor((columnNumber - modulo) / 26);
    }
    return columnName;
}
function getExcelColumnNumber(excelColumnName) {
    excelColumnName = excelColumnName.toUpperCase();
    var number = 0;
    var pow = 1;
    for (var i = excelColumnName.length - 1; i >= 0; i--) {
        number += (excelColumnName.charCodeAt(i) - 'A'.charCodeAt(0) + 1) * pow;
        pow *= 26;
    }
    return number;
}
function iterateOverStructure(container) {
    var stack = new Stack();
    stack.push(container);
    var currentRow = 0;
    var startColumn = 0;
    var endColumn = 0;
    while (!stack.isEmpty) {
        var element = stack.pop();
        var properties = makeAssociativeArray(element.properties);
        if ("tr" === element.tagName) {
            currentRow += 1;
        }
        if ("td" === element.tagName) {
            var colSpan = parseInt(properties["colspan"] || "1");
            var rowSpan = parseInt(properties["rowspan"] || "1");
            startColumn = endColumn + 1;
            endColumn = startColumn + colSpan - 1;
        }
        var children = element.children;
        for (var i = children.length - 1; i > -1; --i) {
            stack.push(children[i]);
        }
    }
}
exports.iterateOverStructure = iterateOverStructure;
