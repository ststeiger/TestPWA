"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.collectSaveData = exports.constructRecursiveDataStructure = exports.assembleStructure = exports.collectStructure = void 0;
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
    for (var i = 0; i < data.properties.length; ++i) {
        el.setAttribute(data.properties[i][0], data.properties[i][1]);
    }
    if (data.innerHtml)
        el.innerHTML = data.innerHtml;
    return el;
}
function assembleStructure(container, parent) {
    parent = parent || document.createDocumentFragment();
    var a = _createElement(container);
    for (var i = 0; i < container.children.length; ++i) {
        assembleStructure(container.children[i], a);
    }
    parent.appendChild(a);
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
        for (var i_1 = 0; i_1 < propArray.rowCount; ++i_1) {
            var currentItem = propArray.row(i_1);
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
