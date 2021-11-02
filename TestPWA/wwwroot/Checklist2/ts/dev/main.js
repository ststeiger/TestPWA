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
if (true) {
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
function onDocumentReady() {
    return __awaiter(this, void 0, void 0, function () {
        var _, params, chlist, checkListData, checklistName, elements, elemntProps, checkListHeader, htmlInfo, assembledFragment;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
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
                    params = url_params.parseQuery(document.location.href);
                    chlist = params.get("cl_uid");
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
                    document.body.appendChild(assembledFragment);
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
                                        return [4, fetchJSON("../ajax/anyInsert.ashx?sql=Checklist2.SaveChecklistDataSet.sql", { "__cls_uid": cls_uid, "__cls_cl_uid": chlist })];
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
                                    case 5: return [2];
                                }
                            });
                        });
                    }, false);
                    return [4, loadChecklistValues(chlist)];
                case 3:
                    _a.sent();
                    return [2];
            }
        });
    });
}
function main() {
    autorun.documentReady(onDocumentReady);
}
exports.main = main;
