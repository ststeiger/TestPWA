"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.smartIterate = exports.javaScriptStringEncode = exports.htmlAttributeEncode = exports.htmlToDocFragment = exports.htmlToDom = exports.xmlToDom = exports.stringToFragment = void 0;
function stringToFragment(html) {
    var temp = document.createElement('template');
    temp.innerHTML = html;
    return temp.content;
}
exports.stringToFragment = stringToFragment;
function xmlToDom(xmlString) {
    var doc = new DOMParser().parseFromString(xmlString, "text/xml");
    return doc;
}
exports.xmlToDom = xmlToDom;
function htmlToDom(html) {
    var parser = new DOMParser();
    return parser.parseFromString(html, 'text/html');
}
exports.htmlToDom = htmlToDom;
function htmlToDocFragment(html) {
    var parser = new DOMParser();
    var doc = parser.parseFromString(html, 'text/html');
    var frag = document.createDocumentFragment();
    for (var i = 0; i < doc.body.children.length; ++i) {
        frag.appendChild(doc.body.children[i]);
    }
    return frag;
}
exports.htmlToDocFragment = htmlToDocFragment;
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
function _getProperties(el) {
    var arr = [];
    for (var i = 0, atts = el.attributes, n = atts.length; i < n; i++) {
        var a = atts[i].nodeName;
        arr.push([a, el.getAttribute(a)]);
    }
    return arr;
}
function htmlAttributeEncode(s) {
    if (!s)
        return "";
    var needEncode = false;
    for (var i = 0; i < s.length; i++) {
        var c = s[i];
        if (c == '&' || c == '"' || c == '<' || c == '\'') {
            needEncode = true;
            break;
        }
    }
    if (!needEncode)
        return s;
    var output = [];
    var len = s.length;
    for (var i = 0; i < len; i++) {
        var ch = s[i];
        switch (ch) {
            case '&':
                output.push("&amp;");
                break;
            case '"':
                output.push("&quot;");
                break;
            case '<':
                output.push("&lt;");
                break;
            case '\'':
                output.push("&#39;");
                break;
            default:
                output.push(ch);
                break;
        }
    }
    return output.join("");
}
exports.htmlAttributeEncode = htmlAttributeEncode;
function javaScriptStringEncode(value, addDoubleQuotes) {
    addDoubleQuotes = addDoubleQuotes || false;
    if (!value)
        return addDoubleQuotes ? "\"\"" : "";
    var len = value.length;
    var needEncode = false;
    var c;
    for (var i = 0; i < len; i++) {
        c = value[i];
        var cc = c.charCodeAt(0);
        if (cc >= 0 && cc <= 31 || cc == 34 || cc == 39 || cc == 60 || cc == 62 || cc == 92) {
            needEncode = true;
            break;
        }
    }
    if (!needEncode)
        return addDoubleQuotes ? "\"" + value + "\"" : value;
    var sb = [];
    if (addDoubleQuotes)
        sb.push('"');
    for (var i = 0; i < len; i++) {
        c = value[i];
        var cc = c.charCodeAt(0);
        if (cc >= 0 && cc <= 7 || cc == 11 || cc >= 14 && cc <= 31 || cc == 39 || cc == 60 || cc == 62) {
            var t = "0000" + cc.toString(16);
            t = "\\u" + t.substr(t.length - 4);
            sb.push(t);
        }
        else
            switch (cc) {
                case 8:
                    sb.push("\\b");
                    break;
                case 9:
                    sb.push("\\t");
                    break;
                case 10:
                    sb.push("\\n");
                    break;
                case 12:
                    sb.push("\\f");
                    break;
                case 13:
                    sb.push("\\r");
                    break;
                case 34:
                    sb.push("\\\"");
                    break;
                case 92:
                    sb.push("\\\\");
                    break;
                default:
                    sb.push(c);
                    break;
            }
    }
    if (addDoubleQuotes)
        sb.push('"');
    return sb.join("");
}
exports.javaScriptStringEncode = javaScriptStringEncode;
function smartIterate(container, documentName) {
    var stack = new Stack();
    stack.push(container);
    documentName = documentName || "document";
    var js = [];
    var k = 1;
    while (!stack.isEmpty) {
        var cur = stack.pop();
        var increment = false;
        if (cur.appendOnly) {
            var currentParent = cur.pa;
            js.push(currentParent + ".appendChild(" + cur.currentElement + ");\r\n");
            continue;
        }
        if (cur.nodeType === Node.ELEMENT_NODE) {
            var props = _getProperties(cur);
            cur.currentElement = "node_" + k.toString();
            increment = true;
            js.push("var " + cur.currentElement + " = " + documentName + ".createElement(\"" + cur.nodeName + "\");\r\n");
            for (var i = 0; i < props.length; ++i) {
                var thisProperty = props[i];
                var propertyName = thisProperty[0];
                var propertyValue = thisProperty[1];
                propertyName = javaScriptStringEncode(htmlAttributeEncode(propertyName));
                propertyValue = javaScriptStringEncode(htmlAttributeEncode(propertyValue));
                js.push(cur.currentElement + ".setAttribute(\"" + propertyName + "\", \"" + propertyValue + "\");\r\n");
            }
        }
        else if (cur.nodeType === Node.DOCUMENT_FRAGMENT_NODE) {
            cur.currentElement = "node_" + k.toString();
            increment = true;
            js.push("var " + cur.currentElement + " = " + documentName + ".createDocumentFragment();\r\n");
        }
        else if (cur.nodeType === Node.TEXT_NODE) {
            var txt = cur.textContent.replace(/^\s+|\s+$/g, '');
            if (txt) {
                var currentParent = cur.pa;
                txt = cur.wholeText || cur.textContent;
                txt = javaScriptStringEncode(htmlAttributeEncode(txt));
                js.push(currentParent + ".appendChild(" + documentName + ".createTextNode(\"" + txt + "\"));\r\n");
            }
        }
        else {
            console.log(cur.nodeName, cur.nodeType);
        }
        if (increment) {
            k++;
            cur.appendOnly = true;
            if (k != 2)
                stack.push(cur);
        }
        var children = Array.prototype.slice.call(cur.childNodes);
        for (var i = children.length - 1; i > -1; --i) {
            children[i].pa = cur.currentElement;
            stack.push(children[i]);
        }
    }
    return js.join("");
}
exports.smartIterate = smartIterate;
function testJS() {
    var ccc = "<div class=\"buttonFrame\" id=\"buttonFrame\">\n  <span class=\"bfUsername\">D. Administrator&nbsp;</span>\n\n  <div class=\"Right\">\n    <input type=\"submit\" name=\"btn_Speichern\" value=\"Speichern\" onclick=\"javascript:console.log('hello');\" style=\"box-shadow: rgb(206, 206, 206) 10px 4px 9px -10px inset;\">\n  </div>\n\n  <div class=\"Left\">\n    <input type=\"submit\" name=\"btn_Abbrechen\" value=\"Abbrechen\" id=\"btn_Abbrechen\" class=\"validate-skip\" style=\"box-shadow: rgb(206, 206, 206) 10px 4px 9px -10px inset;\">\n  </div>\n</div>\n";
    var js = smartIterate(htmlToDocFragment(ccc), "document");
    console.log(js);
}
