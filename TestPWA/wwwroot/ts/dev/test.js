"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var uuid = require("./uuid.js");
if (true) {
}
function left(str, length) {
    if (!str)
        return str;
    return str.substr(0, length);
}
function right(str, length) {
    if (!str)
        return str;
    return str.substr(-length);
}
function ltrim(str) {
    if (!str)
        return str;
    return str.replace(/^[\s\uFEFF\xA0]+/g, '');
}
function rtrim(str) {
    if (!str)
        return str;
    return str.replace(/[\s\uFEFF\xA0]+$/g, '');
}
function trimStr(str) {
    if (!str)
        return str;
    return str.replace(/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g, '');
}
function replace(str, oldToken, newToken, ignoreCase) {
    if (Array.isArray(oldToken)) {
        for (var i = 0; i < oldToken.length; ++i) {
            str = replace(str, oldToken[i], newToken, ignoreCase);
        }
        return str;
    }
    newToken = newToken || "";
    ignoreCase = ignoreCase || false;
    if (!str || !oldToken)
        return str;
    if ((ignoreCase ? oldToken.toLowerCase() : oldToken) == (ignoreCase ? newToken.toLowerCase() : newToken))
        return str;
    var foundAt = 0;
    var ci = (ignoreCase ? oldToken.toLowerCase() : oldToken);
    while ((foundAt = ((ignoreCase ? str.toLowerCase() : str)).indexOf(ci, foundAt)) != -1) {
        str = str.substr(0, foundAt) + newToken + str.substr(foundAt + oldToken.length);
        foundAt += newToken.length;
    }
    return str;
}
function getValues() {
    var eles = document.querySelectorAll('tr td[colspan="6"]');
    var arr = [];
    for (var i = 0; i < eles.length; ++i) {
        arr.push(trimStr(eles[i].textContent));
    }
    return arr;
}
function getProperties(el) {
    var arr = [];
    for (var i = 0, atts = el.attributes, n = atts.length; i < n; i++) {
        var a = atts[i].nodeName;
        arr.push([a, el.getAttribute(a)]);
    }
    return arr;
}
function collectStructure(p, parent) {
    if (p == null)
        return;
    parent = parent || null;
    var children = Array.prototype.slice.call(p.childNodes);
    var guid = uuid.newGuid();
    var checklistData = {
        "uuid": guid,
        "parent_uuid": parent,
        "tagName": p.nodeName,
        "properties": getProperties(p),
        "children": []
    };
    if (p.nodeName.toLowerCase() === "td") {
        checklistData.innerHtml = p.innerHTML;
    }
    else if (children.length) {
        for (var i = 0; i < children.length; i++) {
            var cur = children[i];
            if (cur.nodeType === Node.TEXT_NODE) {
            }
            else if (cur.nodeType === Node.ELEMENT_NODE) {
                var ret = collectStructure(cur, guid);
                checklistData.children.push(ret);
            }
            else {
                console.log("unhandeld node", cur.nodeType);
            }
        }
    }
    return checklistData;
}
function createElement(ed) {
    var el = document.createElement(ed.tagName);
    for (var i = 0; i < ed.properties.length; ++i) {
        el.setAttribute(ed.properties[i][0], ed.properties[i][1]);
    }
    if (ed.innerHtml)
        el.innerHTML = ed.innerHtml;
    return el;
}
function assemblyStructure(obj, parent) {
    parent = parent || document.createDocumentFragment();
    var a = createElement(obj);
    for (var i = 0; i < obj.children.length; ++i) {
        assemblyStructure(obj.children[i], a);
    }
    parent.appendChild(a);
    return parent;
}
function getErrorObject() {
    try {
        throw Error('');
    }
    catch (err) {
        return err;
    }
}
function getScriptName() {
    var error = getErrorObject(), source, lastStackFrameRegex = new RegExp(/.+\/(.*?):\d+(:\d+)*$/), currentStackFrameRegex = new RegExp(/getScriptName \(.+\/(.*):\d+:\d+\)/);
    if (error.stack && (source = lastStackFrameRegex.exec(error.stack.trim())) && source[1] != "")
        return source[1];
    else if (error.stack && (source = currentStackFrameRegex.exec(error.stack.trim())))
        return source[1];
    else if (error.fileName != undefined)
        return error.fileName;
    return null;
}
function autorun() {
    console.log("document ready");
    console.log("translate data", JSON.stringify(getValues(), null, "  "));
    var table = document.querySelector("body > table");
    var harvest = collectStructure(table);
    var obj = require("./mydata.js");
    console.log("obj", obj);
    var t2 = assemblyStructure(harvest);
}
if (document.addEventListener)
    document.addEventListener("DOMContentLoaded", autorun, false);
else if (document.attachEvent)
    document.attachEvent("onreadystatechange", autorun);
else
    window.onload = autorun;
