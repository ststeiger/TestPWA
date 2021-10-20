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
var uuid = require("./uuid.js");
var linq = require("./linq.js");
var autobind_autotrace = require("./autobind_autotrace.js");
var TableWrapper_js_1 = require("./TableWrapper.js");
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
function getTranslateData() {
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
function collectStructure(p, parent, sort) {
    if (p == null)
        return;
    parent = parent || null;
    sort = sort || 0;
    var children = Array.prototype.slice.call(p.childNodes);
    var guid = uuid.newGuid();
    var checklistData = {
        "uuid": guid,
        "parent_uuid": parent,
        "tagName": p.nodeName,
        "properties": getProperties(p),
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
function createElement(data) {
    var el = document.createElement(data.tagName);
    for (var i = 0; i < data.properties.length; ++i) {
        el.setAttribute(data.properties[i][0], data.properties[i][1]);
    }
    if (data.innerHtml)
        el.innerHTML = data.innerHtml;
    return el;
}
function assembleStructure(container, parent) {
    parent = parent || document.createDocumentFragment();
    var a = createElement(container);
    for (var i = 0; i < container.children.length; ++i) {
        assembleStructure(container.children[i], a);
    }
    parent.appendChild(a);
    return parent;
}
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
function autorun() {
    return __awaiter(this, void 0, void 0, function () {
        var _, fetchSingleChecklist, checkListData, checklistName, elements, elemntProps, i, j, i, argh, arghHtml, i;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    _ = {
                        "linq": linq,
                        "autobind_autotrace": autobind_autotrace
                    };
                    console.log("document ready");
                    return [4, fetch("https://localhost:44314/ajax/AnySelect.ashx?sql=GetChecklistData.sql&format=1&__cl_uid=EB159A9C-E69F-49F4-B10E-3A4825973E46")];
                case 1:
                    fetchSingleChecklist = _a.sent();
                    return [4, fetchSingleChecklist.json()];
                case 2:
                    checkListData = _a.sent();
                    checklistName = new TableWrapper_js_1.TableWrapper(checkListData.tables[0].columns, checkListData.tables[0].rows, false);
                    elements = new TableWrapper_js_1.TableWrapper(checkListData.tables[1].columns, checkListData.tables[1].rows, false);
                    elemntProps = new TableWrapper_js_1.TableWrapper(checkListData.tables[2].columns, checkListData.tables[2].rows, false);
                    if (false)
                        for (i = 0; i < checklistName.rowCount; ++i) {
                            console.log("hi.columnCount", checklistName.columnCount);
                            for (j = 0; j < checklistName.columnCount; ++j) {
                                console.log("i", i, "j", j);
                                console.log("Name:", checklistName.row(i).CL_Name, "CL_UID:", checklistName.row(i).CL_UID);
                            }
                        }
                    for (i = 0; i < elements.rowCount; ++i) {
                    }
                    argh = constructRecursiveDataStructure(elements, elemntProps.groupBy("PRO_ELE_UID"));
                    arghHtml = assembleStructure(argh);
                    console.log(argh, arghHtml);
                    document.body.append(arghHtml);
                    if (false)
                        for (i = 0; i < elemntProps.rowCount; ++i) {
                        }
                    return [2];
            }
        });
    });
}
if (document.addEventListener)
    document.addEventListener("DOMContentLoaded", autorun, false);
else if (document.attachEvent)
    document.attachEvent("onreadystatechange", autorun);
else
    window.onload = autorun;
