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
exports.main = void 0;
var autobind_autotrace = require("./autobind_autotrace.js");
var autorun = require("./autorun.js");
var utils = require("./string_utils.js");
var hu = require("./http_utility.js");
var xml = require("./xml_beautifier.js");
var uuid = require("./uuid.js");
var linq = require("./linq.js");
var table_wrapper_js_1 = require("./table_wrapper.js");
var db_html = require("./db_html.js");
var translations = require("./translations.js");
var url_params = require("./url_params.js");
var FontStyle;
(function (FontStyle) {
    FontStyle[FontStyle["Regular"] = 0] = "Regular";
    FontStyle[FontStyle["Bold"] = 1] = "Bold";
    FontStyle[FontStyle["Italic"] = 2] = "Italic";
    FontStyle[FontStyle["Underline"] = 4] = "Underline";
    FontStyle[FontStyle["Strikeout"] = 8] = "Strikeout";
})(FontStyle || (FontStyle = {}));
var GraphicsUnit;
(function (GraphicsUnit) {
    GraphicsUnit[GraphicsUnit["World"] = 0] = "World";
    GraphicsUnit[GraphicsUnit["Display"] = 1] = "Display";
    GraphicsUnit[GraphicsUnit["Pixel"] = 2] = "Pixel";
    GraphicsUnit[GraphicsUnit["Point"] = 3] = "Point";
    GraphicsUnit[GraphicsUnit["Inch"] = 4] = "Inch";
    GraphicsUnit[GraphicsUnit["Document"] = 5] = "Document";
    GraphicsUnit[GraphicsUnit["Millimeter"] = 6] = "Millimeter";
})(GraphicsUnit || (GraphicsUnit = {}));
function addStylesheet(url) {
    var h = document.getElementsByTagName("head")[0];
    if (url.indexOf("?") != -1) {
        url += "&";
    }
    else
        url += "?";
    url += "no_cache=" + (new Date()).getTime().toString();
    var ss = document.createElement("LINK");
    ss.setAttribute("rel", "stylesheet");
    ss.setAttribute("href", url);
    h.appendChild(ss);
}
if (true) {
    addStylesheet("css/checklist.css");
    addStylesheet("../css/Scrolling/Scrollbar.css?v=1");
}
function postFetch(url, payload) {
    return __awaiter(this, void 0, void 0, function () {
        var bdy, result;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    bdy = null;
                    if (typeof (payload) === 'string' || payload instanceof String)
                        bdy = payload;
                    if (typeof (payload) === 'object')
                        bdy = JSON.stringify(payload);
                    if (url.indexOf("?") != -1) {
                        url += "&";
                    }
                    else
                        url += "?";
                    url += "no_cache=" + (new Date()).getTime().toString();
                    return [4, fetch(url, {
                            method: 'POST',
                            headers: {
                                "Accept": "application/json",
                                "Content-Type": "application/json",
                                "credentials": "same-origin",
                                "pragma": "no-cache",
                                "cache-control": "no-cache"
                            },
                            body: bdy
                        })];
                case 1:
                    result = _a.sent();
                    return [2, result];
            }
        });
    });
}
function fetchJSON(url, payload) {
    return __awaiter(this, void 0, void 0, function () {
        var result, data;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    if (url.indexOf("?") != -1) {
                        url += "&";
                    }
                    else
                        url += "?";
                    url += "no_cache=" + (new Date()).getTime().toString();
                    return [4, postFetch(url, payload)];
                case 1:
                    result = _a.sent();
                    return [4, result.json()];
                case 2:
                    data = _a.sent();
                    return [2, data];
            }
        });
    });
}
function fetchText(url, payload) {
    return __awaiter(this, void 0, void 0, function () {
        var result, data;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    if (url.indexOf("?") != -1) {
                        url += "&";
                    }
                    else
                        url += "?";
                    url += "no_cache=" + (new Date()).getTime().toString();
                    return [4, postFetch(url, payload)];
                case 1:
                    result = _a.sent();
                    return [4, result.text()];
                case 2:
                    data = _a.sent();
                    return [2, data];
            }
        });
    });
}
function concat() {
    var args = [];
    for (var _i = 0; _i < arguments.length; _i++) {
        args[_i] = arguments[_i];
    }
    var a = [];
    for (var i = 0; i < args.length; i++) {
        if (args[i] != null)
            a.push(String(args[i]));
    }
    return a.join("");
}
function loadChecklistValues(cl_uid) {
    return __awaiter(this, void 0, void 0, function () {
        var checkListData, checklistValues, i, ele, type;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: return [4, fetchJSON(concat("../ajax/AnySelect.ashx?sql=Checklist2.LoadChecklist.sql&format=1&__cl_uid=", cl_uid))];
                case 1:
                    checkListData = _a.sent();
                    checklistValues = new table_wrapper_js_1.TableWrapper(checkListData.data.tables[0].columns, checkListData.data.tables[0].rows, false);
                    for (i = 0; i < checklistValues.rowCount; ++i) {
                        ele = document.getElementById(checklistValues.row(i).CLV_ELE_UID);
                        if (!ele)
                            continue;
                        type = (ele.getAttribute("type") || "").toLowerCase();
                        if ("checkbox" === type) {
                            ele.checked = (checklistValues.row(i).CLV_Value === 'true');
                        }
                        else if ("text" === type) {
                            ele.value = checklistValues.row(i).CLV_Value;
                        }
                        else if ("textarea" === ele.nodeName.toLowerCase()) {
                            ele.value = checklistValues.row(i).CLV_Value;
                        }
                    }
                    return [2];
            }
        });
    });
}
function assertSession() {
    return __awaiter(this, void 0, void 0, function () {
        var txt, err_1;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    _a.trys.push([0, 2, , 3]);
                    return [4, fetchText("../ajax/CurrentSession.ashx")];
                case 1:
                    txt = _a.sent();
                    return [3, 3];
                case 2:
                    err_1 = _a.sent();
                    return [3, 3];
                case 3: return [2];
            }
        });
    });
}
function startWaiting(timeout) {
    return __awaiter(this, void 0, void 0, function () {
        return __generator(this, function (_a) {
            if (window.top.Portal && window.top.Portal.Global && window.top.Portal.Global.Waiting && window.top.Portal.Global.Waiting.Start) {
                window.setTimeout(function () {
                    window.top.Portal.Global.Waiting.Start();
                }, timeout || 20);
            }
            return [2];
        });
    });
}
function stopWaiting(timeout) {
    return __awaiter(this, void 0, void 0, function () {
        return __generator(this, function (_a) {
            if (window.top.Portal && window.top.Portal.Global && window.top.Portal.Global.Waiting && window.top.Portal.Global.Waiting.Stop) {
                window.setTimeout(function () {
                    window.top.Portal.Global.Waiting.Stop();
                }, timeout || 1500);
            }
            return [2];
        });
    });
}
function saveChecklist(cl_uid) {
    startWaiting();
    var evt = document.createEvent('CustomEvent');
    evt.initCustomEvent('saveChecklist', false, false, { "cl_uid": cl_uid });
    document.dispatchEvent(evt);
}
function setText(el, text) {
    if (!el)
        return;
    el.appendChild(document.createTextNode(text));
}
function setUser(foot, proc, chlist) {
    if (!foot)
        return;
    var old = document.getElementById("usr");
    if (old != null)
        old.parentNode.removeChild(old);
    var span = document.createElement("span");
    span.setAttribute("id", "usr");
    span.setAttribute("class", "username");
    if (window.top.Portal && window.top.Portal.Session && window.top.Portal.Session.Name) {
        setText(span, window.top.Portal.Session.Name());
    }
    else
        setText(span, "Albert Rösti");
    foot.appendChild(span);
}
function setButtons(foot, proc, chlist) {
    if (!foot)
        return;
    var footer = [
        ,
        '<span id="usr" class="username">&nbsp;</span>'
    ];
    if (true) {
        footer.push('<input id="btn_ftrNew" name="btn_ftrNew" onclick="document.querySelector(\'[id$=\\\'ifrmFormTemplate\\\']\').contentWindow.COR.Basic.SIBE.footer.save(); return false;" type="submit" style="float:right; margin-right: 1px;" value="Speichern">');
    }
    var oldButton = document.getElementById("btn_ftrNew");
    if (oldButton != null)
        oldButton.parentNode.removeChild(oldButton);
    var ele = document.createElement("INPUT");
    ele.setAttribute("id", "btn_ftrNew");
    ele.setAttribute("name", "btn_ftrNew");
    ele.setAttribute("onclick", "saveChecklist();");
    ele.setAttribute("type", "submit");
    ele.setAttribute("style", "float:right; margin-right: 1px;");
    ele.setAttribute("value", "Speichern");
    window.saveChecklist = saveChecklist.bind(ele, chlist);
    foot.appendChild(ele);
}
function setFooter(proc, chlist) {
    var foot = document.getElementById("buttonFrame");
    setUser(foot, proc, chlist);
    setButtons(foot, proc, chlist);
}
function clearHtmlElementContents(el) {
    while (el.lastChild) {
        el.removeChild(el.lastChild);
    }
}
function onChecklistChanged(proc, chlist) {
    return __awaiter(this, void 0, void 0, function () {
        var _, checkListData, checklistName, elements, elemntProps, checkListHeader, htmlInfo, assembledFragment, tChecklist;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    startWaiting();
                    _ = {
                        "autobind_autotrace": autobind_autotrace,
                        "autorun": autorun,
                        "hu": hu,
                        "linq": linq,
                        "tr": table_wrapper_js_1.TableWrapper,
                        "tra": translations,
                        "up": url_params,
                        "utils": utils,
                        "uuid": uuid,
                        "xml": xml
                    };
                    setFooter(proc, chlist);
                    return [4, assertSession()];
                case 1:
                    _a.sent();
                    return [4, fetchJSON(concat("../ajax/AnySelect.ashx?sql=Checklist2.GetChecklistData.sql&format=1&__cl_uid=", chlist))];
                case 2:
                    checkListData = _a.sent();
                    if (checkListData.hasError) {
                        alert("Error loading checklist-data:\r\n" + checkListData.error.message);
                        return [2];
                    }
                    checklistName = new table_wrapper_js_1.TableWrapper(checkListData.data.tables[0].columns, checkListData.data.tables[0].rows, false);
                    elements = new table_wrapper_js_1.TableWrapper(checkListData.data.tables[1].columns, checkListData.data.tables[1].rows, false);
                    elemntProps = new table_wrapper_js_1.TableWrapper(checkListData.data.tables[2].columns, checkListData.data.tables[2].rows, false);
                    checkListHeader = document.getElementById("checkListTitle");
                    if (checklistName.rowCount > 0) {
                        document.title = checklistName.row(0).CL_Name;
                        checkListHeader.innerText = checklistName.row(0).CL_Title;
                    }
                    htmlInfo = db_html.constructRecursiveDataStructure(elements, elemntProps.groupBy("PRO_ELE_UID"));
                    assembledFragment = db_html.assembleStructure(htmlInfo);
                    tChecklist = document.getElementById("tChecklist");
                    clearHtmlElementContents(tChecklist);
                    tChecklist.appendChild(assembledFragment);
                    if (!document.listensForSave)
                        document.addEventListener('saveChecklist', function (e) {
                            return __awaiter(this, void 0, void 0, function () {
                                var cls_uid, saveData, saveDataSetResult, saveChecklistDataResult;
                                return __generator(this, function (_a) {
                                    switch (_a.label) {
                                        case 0:
                                            cls_uid = uuid.newGuid();
                                            saveData = db_html.collectSaveData(document.querySelector("table"), cls_uid);
                                            return [4, assertSession()];
                                        case 1:
                                            _a.sent();
                                            return [4, fetchJSON("../ajax/anyInsert.ashx?sql=Checklist2.SaveChecklistDataSet.sql", { "__cls_uid": cls_uid, "__cls_cl_uid": e.detail.cl_uid })];
                                        case 2:
                                            saveDataSetResult = _a.sent();
                                            console.log("dataSetResult", saveDataSetResult);
                                            if (!(saveDataSetResult.hasError === false)) return [3, 4];
                                            return [4, fetchJSON("../ajax/anyInsert.ashx?sql=Checklist2.SaveChecklistData.sql", saveData)];
                                        case 3:
                                            saveChecklistDataResult = _a.sent();
                                            if (saveDataSetResult.hasError === false) {
                                                console.log("saveResult", saveChecklistDataResult);
                                            }
                                            else {
                                                alert(saveChecklistDataResult.error.message);
                                            }
                                            return [3, 5];
                                        case 4:
                                            alert(saveDataSetResult.error.message);
                                            _a.label = 5;
                                        case 5:
                                            stopWaiting();
                                            return [2];
                                    }
                                });
                            });
                        }, false);
                    document.listensForSave = true;
                    return [4, loadChecklistValues(chlist)];
                case 3:
                    _a.sent();
                    stopWaiting(400);
                    return [2];
            }
        });
    });
}
function checkOrigin(event) {
    var ret = false;
    ;
    var message;
    if (!origin.toLowerCase().startsWith("https://localhost:") && !origin.toLowerCase().startsWith("https://localhost/")) {
        message = 'You ("' + event.origin + '") are not worthy';
        ret = true;
    }
    else {
        message = 'I got "' + event.data + '" from "' + event.origin + '"';
    }
    console.log(message);
    return ret;
}
function receiveMessage(event) {
    return __awaiter(this, void 0, void 0, function () {
        var tData, tAction, urlInfo;
        return __generator(this, function (_a) {
            if (event == null || event.data == null) {
                console.log("no event or no data", event);
                return [2];
            }
            tData = null;
            try {
                tData = (typeof event.data === 'string') ? JSON.parse(event.data) : event.data;
            }
            catch (ex) {
                console.log(ex, event);
                console.dir(event);
            }
            tAction = (tData.Action || '').toLowerCase();
            console.log(tData.Action + "->", JSON.stringify(tData, null, "  "));
            switch (tAction) {
                case 'portal.filter.loaded':
                    spreadMessage({ "Action": "Portal.Filter.Enable" });
                    break;
                case 'portal.basic.update':
                    console.log("Link-Target:", tData.Link);
                    urlInfo = url_params.parseQuery(tData.Link);
                    onChecklistChanged(urlInfo.get("proc"), urlInfo.get("cl_uid"));
                    spreadMessage({ "Action": "Portal.Filter.Enable" });
                    break;
                default:
                    console.log("Unhandled event->", tData.Action);
                    spreadMessage({ "Action": "Portal.Filter.Enable" });
                    break;
            }
            return [2];
        });
    });
}
function spreadMessage(object) {
    if (inFrame) {
        window.top.Portal.Global.spreadMessage(object);
    }
    else {
        window.postMessage(JSON.stringify(object), '*');
    }
}
function setMessageListener() {
    if (window.removeEventListener)
        window.removeEventListener("message", receiveMessage, false);
    else
        window.detachEvent("onmessage", receiveMessage);
    if (!window['postMessage'])
        alert("oh crap");
    else {
        if (window.addEventListener) {
            window.addEventListener("message", receiveMessage, false);
        }
        else {
            window.attachEvent("onmessage", receiveMessage);
        }
    }
}
function isInlineFrame() {
    try {
        return window.self !== window.top;
    }
    catch (e) {
        return true;
    }
}
function onDocumentReady() {
    return __awaiter(this, void 0, void 0, function () {
        var params, chlist;
        return __generator(this, function (_a) {
            params = url_params.parseQuery(document.location.href);
            chlist = params.get("cl_uid");
            onChecklistChanged(null, chlist);
            return [2];
        });
    });
}
var inFrame = isInlineFrame();
setMessageListener();
function dispatchBasicUpdate() {
    var msg = {
        "Action": "Portal.Basic.Update",
        "Link": document.location.href
    };
    spreadMessage(msg);
}
function main() {
    if (!isInlineFrame()) {
        dispatchBasicUpdate();
    }
}
exports.main = main;
