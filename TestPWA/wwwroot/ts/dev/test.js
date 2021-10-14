"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var hu = require("./HttpUtility.js");
if (true) {
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
function getValues() {
    var eles = document.querySelectorAll('tr td[colspan="6"]');
    var arr = [];
    for (var i = 0; i < eles.length; ++i) {
        arr.push(trimStr(eles[i].textContent));
    }
    return arr;
}
console.log(JSON.stringify(getValues(), null, "  "));
function getProperties(el) {
    var arr = [];
    for (var i = 0, atts = el.attributes, n = atts.length; i < n; i++) {
        var a = atts[i].nodeName;
        arr.push([a, el.getAttribute(a)]);
    }
    return arr;
}
function iterator(p) {
    if (p == null)
        return;
    var children = Array.prototype.slice.call(p.childNodes);
    var checklistData = {
        "element": {
            "tagName": p.nodeName,
            "properties": getProperties(p)
        },
        "children": []
    };
    if (p.nodeName.toLowerCase() === "td")
        checklistData.element.innerHtml = p.innerHTML;
    else if (children.length) {
        for (var i = 0; i < children.length; i++) {
            var cur = children[i];
            if (cur.nodeType === Node.TEXT_NODE) {
            }
            else if (cur.nodeType === Node.ELEMENT_NODE) {
                var ret = iterator(cur);
                checklistData.children.push(ret);
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
function tabulator(obj, parent) {
    parent = parent || document.createDocumentFragment();
    var a = createElement(obj.element);
    for (var i = 0; i < obj.children.length; ++i) {
        tabulator(obj.children[i], a);
    }
    parent.appendChild(a);
    return parent;
}
function Replace(str, oldToken, newToken, ignoreCase) {
    newToken = newToken || "";
    ignoreCase = ignoreCase || false;
    if (!str || !oldToken)
        return str;
    if ((ignoreCase ? oldToken.toLowerCase() : oldToken) == (ignoreCase ? newToken.toLowerCase() : newToken))
        return str;
    var foundAt = 0;
    while ((foundAt = ((ignoreCase ? str.toLowerCase() : str)).indexOf(oldToken, foundAt)) != -1) {
        str = str.substr(0, foundAt) + newToken + str.substr(foundAt + oldToken.length);
        foundAt += newToken.length;
    }
    return str;
}
var XML = {
    parse: function (string, type) {
        if (type === void 0) { type = 'text/xml'; }
        return new DOMParser().parseFromString(string, type);
    },
    stringify: function (DOM) {
        return new XMLSerializer().serializeToString(DOM);
    },
    transform: function (xml, xsl) {
        var proc = new XSLTProcessor();
        proc.importStylesheet(typeof xsl == 'string' ? XML.parse(xsl) : xsl);
        var output = proc.transformToFragment(typeof xml == 'string' ? XML.parse(xml) : xml, document);
        return typeof xml == 'string' ? XML.stringify(output) : output;
    },
    minify: function (node) {
        return XML.toString(node, false);
    },
    prettify: function (node) {
        var res = XML.toString(node, true);
        if (res.startsWith("<#document-fragment>"))
            res = res.substr("<#document-fragment>".length);
        if (res.endsWith("</#document-fragment>\n")) {
            res = res.substr(0, res.length - "</#document-fragment>\n".length);
            res += "\n";
        }
        return res;
    },
    toString: function (node, pretty, level, singleton) {
        if (level === void 0) { level = 0; }
        if (singleton === void 0) { singleton = false; }
        if (typeof node == 'string')
            node = XML.parse(node);
        var tabs = pretty ? Array(level + 1).fill('').join('\t') : '';
        var newLine = pretty ? '\n' : '';
        if (node.nodeType == 3)
            return (singleton ? '' : tabs) + node.textContent.trim() + (singleton ? '' : newLine);
        if (!node.nodeName)
            return XML.toString(node.firstChild, pretty);
        var output = tabs + ("<" + node.nodeName.toLowerCase());
        if (node.attributes) {
            for (var i = 0; i < node.attributes.length; i++)
                output += " " + node.attributes[i].name + "=\"" + node.attributes[i].value + "\"";
        }
        if (node.childNodes.length == 0)
            return output + ' />' + newLine;
        else
            output += '>';
        var onlyOneTextChild = ((node.childNodes.length == 1) && (node.childNodes[0].nodeType == 3));
        if (!onlyOneTextChild)
            output += newLine;
        for (var i = 0; i < node.childNodes.length; i++)
            output += XML.toString(node.childNodes[i], pretty, level + 1, onlyOneTextChild);
        return output + (onlyOneTextChild ? '' : tabs) + ("</" + node.nodeName.toLowerCase() + ">") + newLine;
    }
};
function autorun() {
    console.log("document ready");
    var table = document.querySelector("body > table");
    console.log("table", table);
    var it = iterator(table);
    var t2 = tabulator(it);
    console.log("out", t2);
    console.log(XML.prettify(t2));
    var b = hu.htmlEncode("äöü<>[]{}nihao");
    var c = hu.htmlDecode(b);
    console.log(c);
}
if (document.addEventListener)
    document.addEventListener("DOMContentLoaded", autorun, false);
else if (document.attachEvent)
    document.attachEvent("onreadystatechange", autorun);
else
    window.onload = autorun;
