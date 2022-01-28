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
var ajax = require("./ajax.js");
var db_html = require("./db_html.js");
var translations = require("./translations.js");
var url_params = require("./url_params.js");
var _ = {
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
var onSaveChecklist;
function assertSession() {
    return __awaiter(this, void 0, void 0, function () {
        var txt, err_1;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    _a.trys.push([0, 2, , 3]);
                    return [4, ajax.fetchText("../ajax/CurrentSession.ashx")];
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
function getPortalData() {
    var userLanguage = "de";
    var proc = "200CEB26807D6BF99FD6F4F0D1CA54D4";
    var userName = "A. Rösti";
    if (window.top.Portal && window.top.Portal.Session) {
        if (window.top.Portal && window.top.Portal.Session && window.top.Portal.Session.ID)
            proc = window.top.Portal.Session.ID();
        if (window.top.Portal && window.top.Portal.Session && window.top.Portal.Session.Language)
            userLanguage = window.top.Portal.Session.Language().toLowerCase();
        if (window.top.Portal && window.top.Portal.Session && window.top.Portal.Session.Name)
            userName = window.top.Portal.Session.Name();
    }
    return {
        userLanguage: userLanguage,
        proc: proc,
        userName: userName
    };
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
function clearHtmlElementContents(el) {
    while (el.lastChild) {
        el.removeChild(el.lastChild);
    }
}
function getSelectedRow(ev) {
    var row = ev.currentTarget;
    while (row && !row.classList.contains("pu_content")) {
        row = row.parentElement;
    }
    return row;
}
function getPopopContainer(el) {
    var popup = el;
    while (popup && !popup.classList.contains("Popup")) {
        popup = popup.parentElement;
    }
    return popup;
}
function loadChecklistValues(cl_uid, cls_uid) {
    return __awaiter(this, void 0, void 0, function () {
        var params, checkListData, checklistValues, i, ele, type;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    params = {
                        "__cl_uid": cl_uid,
                        "__cls_uid": cls_uid
                    };
                    return [4, ajax.fetchJSON("../ajax/AnySelect.ashx?sql=Checklist2.LoadChecklist.sql&format=1", params)];
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
function QuickFix_SNB_2021_FIXME() {
    var badForegrounds = Array.prototype.slice.call(document.querySelectorAll('td[bgcolor="#E7E6E6"]'));
    var badBackgrounds = Array.prototype.slice.call(document.querySelectorAll('td[bgcolor="#EDEDED"]'));
    for (var i = 0; i < badBackgrounds.length; ++i) {
        badBackgrounds[i].setAttribute("bgcolor", "#5F5F5F");
    }
    for (var i = 0; i < badForegrounds.length; ++i) {
        var oldStyle = badForegrounds[i].getAttribute("style") || "";
        badForegrounds[i].setAttribute("style", oldStyle + "; color: #000;");
    }
}
function getChecklistObjectParams(cls_uid, cl_uid, proc) {
    return __awaiter(this, void 0, void 0, function () {
        var sess, obj, params;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    console.log("getChecklistObjectParams");
                    return [4, ajax.fetchJSON("../ajax/CurrentSession.ashx")];
                case 1:
                    sess = _a.sent();
                    obj = getObj(sess);
                    console.log(obj);
                    params = {
                        "__cls_uid": cls_uid || uuid.newGuid(),
                        "__cls_cl_uid": cl_uid,
                        "__cls_be_hash": proc,
                        "__cls_obj_uid": "",
                        "__cls_objt_code": "",
                        "__cls_tsk_uid": ""
                    };
                    if (obj.OBJT_Code === "TSK") {
                        params.__cls_tsk_uid = obj.OBJ_UID;
                        params.__cls_obj_uid = null;
                        params.__cls_objt_code = null;
                    }
                    else {
                        params.__cls_tsk_uid = null;
                        params.__cls_obj_uid = obj.OBJ_UID;
                        params.__cls_objt_code = obj.OBJT_Code;
                    }
                    return [2, params];
            }
        });
    });
}
function loadChecklist(proc, cl_uid, cls_uid, withData) {
    return __awaiter(this, void 0, void 0, function () {
        var mainContain, divOverview, logo, checkListTitle, br1, br2, divChecklist, clUrl, checkListData, checklistName, elements, elemntProps, checkListHeader, htmlInfo, assembledFragment, tChecklist, taskParams, isTaskDone, taskValues, taskIsDone;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    console.log("loadChecklist", proc, cl_uid);
                    mainContain = document.getElementById("mainContainer");
                    if (!mainContain)
                        return [2];
                    clearHtmlElementContents(mainContain);
                    divOverview = document.createElement("DIV");
                    divOverview.setAttribute("id", "tOverview");
                    divOverview.setAttribute("style", "padding-top: 20px; max-width: 100%; height: calc(100% - 40px); overflow: auto;");
                    logo = document.createElement("IMG");
                    logo.setAttribute("src", "images/SNB-Logo-blau.svg");
                    logo.setAttribute("style", "fontwidth: 6cm;");
                    checkListTitle = document.createElement("H2");
                    checkListTitle.setAttribute("id", "checkListTitle");
                    checkListTitle.setAttribute("style", "font-family: Arial; font-size: 14pt;");
                    divOverview.appendChild(checkListTitle);
                    br1 = document.createElement("BR");
                    br2 = document.createElement("BR");
                    divOverview.appendChild(br1);
                    divOverview.appendChild(br2);
                    divChecklist = document.createElement("DIV");
                    divChecklist.setAttribute("id", "tChecklist");
                    divOverview.appendChild(divChecklist);
                    mainContain.appendChild(divOverview);
                    startWaiting();
                    clUrl = "../ajax/AnySelect.ashx?sql=Checklist2.GetChecklistData.sql&format=1";
                    return [4, ajax.fetchJSON(clUrl, { "__cl_uid": cl_uid, "__cls_uid": cls_uid })];
                case 1:
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
                        if (checkListHeader)
                            checkListHeader.innerText = checklistName.row(0).CL_Title;
                    }
                    htmlInfo = db_html.constructRecursiveDataStructure(elements, elemntProps.groupBy("PRO_ELE_UID"));
                    assembledFragment = db_html.assembleStructure(htmlInfo);
                    tChecklist = document.getElementById("tChecklist");
                    clearHtmlElementContents(tChecklist);
                    tChecklist.appendChild(assembledFragment);
                    onSaveChecklist =
                        function () {
                            return __awaiter(this, void 0, void 0, function () {
                                var params, saveData, saveDataSetResult, saveChecklistDataResult;
                                return __generator(this, function (_a) {
                                    switch (_a.label) {
                                        case 0: return [4, getChecklistObjectParams(cls_uid, cl_uid, proc)];
                                        case 1:
                                            params = _a.sent();
                                            saveData = db_html.collectSaveData(document.querySelector("table"), params.__cls_uid);
                                            return [4, ajax.fetchJSON("../ajax/anyInsert.ashx?sql=Checklist2.SaveChecklistDataSet.sql", params)];
                                        case 2:
                                            saveDataSetResult = _a.sent();
                                            if (!(saveDataSetResult.hasError === false)) return [3, 7];
                                            return [4, ajax.fetchJSON("../ajax/anyInsert.ashx?sql=Checklist2.SaveChecklistData.sql", saveData)];
                                        case 3:
                                            saveChecklistDataResult = _a.sent();
                                            if (!(saveDataSetResult.hasError === false)) return [3, 5];
                                            return [4, loadMainContainer()];
                                        case 4:
                                            _a.sent();
                                            return [3, 6];
                                        case 5:
                                            alert(saveChecklistDataResult.error.message);
                                            _a.label = 6;
                                        case 6: return [3, 8];
                                        case 7:
                                            alert(saveDataSetResult.error.message);
                                            _a.label = 8;
                                        case 8:
                                            stopWaiting();
                                            return [2];
                                    }
                                });
                            });
                        };
                    QuickFix_SNB_2021_FIXME();
                    if (!withData) return [3, 3];
                    return [4, loadChecklistValues(cl_uid, cls_uid)];
                case 2:
                    _a.sent();
                    _a.label = 3;
                case 3: return [4, getChecklistObjectParams(cls_uid, cl_uid, proc)];
                case 4:
                    taskParams = _a.sent();
                    return [4, ajax.fetchJSON("../ajax/AnySelect.ashx?sql=Checklist2.CheckTaskDoneFlag.sql&format=1", taskParams)];
                case 5:
                    isTaskDone = _a.sent();
                    taskValues = new table_wrapper_js_1.TableWrapper(isTaskDone.data.tables[0].columns, isTaskDone.data.tables[0].rows, false);
                    taskIsDone = taskValues.row(0).IsDone;
                    console.log("taskIsDone", taskIsDone, taskValues);
                    if (!true) return [3, 7];
                    return [4, createFooter(DisplayButtons.Cancel | DisplayButtons.ExcelExport)];
                case 6:
                    _a.sent();
                    return [3, 9];
                case 7: return [4, createFooter(DisplayButtons.Cancel | DisplayButtons.Save | DisplayButtons.ExcelExport)];
                case 8:
                    _a.sent();
                    _a.label = 9;
                case 9:
                    stopWaiting(400);
                    return [2];
            }
        });
    });
}
function onChecklistClose(ev) {
    var divChecklistsPopup = ev.currentTarget.parentNode;
    divChecklistsPopup.parentNode.removeChild(divChecklistsPopup);
}
function getTranslation(item, language) {
    if (!item)
        return "";
    if (!language)
        language = "de";
    language = language.toLowerCase();
    var i18n = {
        "SaveChecklist": { "de": "Speichern", "fr": "Enregistrer", "it": "Salvare", "en": "Save" },
        "CancelChecklist": { "de": "Abbrechen", "fr": "Annuler", "it": "Annulla", "en": "Cancel" },
        "ExcelExportChecklist": { "de": "Excel-Export", "fr": "Exportation Excel", "it": "Esportazione Excel", "en": "Excel export" },
        "OpenChecklist": { "de": "Checkliste öffnen", "fr": "Ouvrir liste de contrôle", "it": "Apri lista di controllo", "en": "Open checklist" },
        "NewChecklist": { "de": "Neue Checkliste", "fr": "Nouvelle liste de contrôle", "it": "Nuova lista di controllo", "en": "New checklist" },
        "SelectVersion": { "de": "Version auswählen", "fr": "Sélectionnez version", "it": "Seleziona versione", "en": "Select version" },
        "OverrideChecklistName": {
            "de": "Name\n    Durch das Überschreiben des Names in der Liste wird der Name der Checkliste geändert",
            "fr": "Nom\n    L'écrasement du nom dans la liste modifie le nom de la liste de contrôle",
            "it": "Nome\n    Sovrascrivendo il nome nella lista cambia il nome della checklist",
            "en": "Name\n    Overwriting the name in the list changes the name of the checklist"
        },
        "ChecklistStatus": {
            "de": "Status (aktiv | inaktiv)\n    Inaktive Checklisten sind nicht zuweisbar",
            "fr": "Statut (actif | inactif)\n    Les listes de contrôle inactives ne peuvent pas être attribuées",
            "it": "Stato (attivo | inattivo)\n    Non è possibile assegnare liste di controllo inattive",
            "en": "Status (active | inactive)\n    Inactive checklists cannot be assigned"
        },
        "LoadChecklistForEditing": {
            "de": "Laden\n    Gewählte Checkliste zum Bearbeiten Laden",
            "fr": "Charger\n    Charger la liste de contrôle sélectionnée pour l'édition",
            "it": "Carica\n    Carica la lista di controllo selezionata per la modifica",
            "en": "Load\n    Load selected checklist for editing"
        },
        "DeleteEntry": {
            "de": "Löschen\n    Gelöschte Checklisten erscheinen nach dem Schliessen des Fensters nicht mehr",
            "fr": "Supprimer\n    Les listes de contrôle supprimées n'apparaissent plus après la fermeture de la fenêtre",
            "it": "Elimina\n    Gli elenchi di controllo eliminati non vengono più visualizzati dopo la chiusura della finestra",
            "en": "Delete\n    Deleted checklists no longer appear after the window is closed"
        },
        "Empty": { "de": "", "fr": "", "it": "", "en": "" }
    };
    if (!i18n[item])
        return item;
    if (!i18n[item][language]) {
        if (i18n[item]["de"])
            return i18n[item]["de"];
        return "";
    }
    return i18n[item][language];
}
function onLoadNewChecklistDialogue(ev) {
    return __awaiter(this, void 0, void 0, function () {
        var popup, pd, params, urlAvailable, allChecklistsData, allChecklists, openDialogue;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    popup = getPopopContainer(ev.currentTarget);
                    popup.parentNode.removeChild(popup);
                    pd = getPortalData();
                    params = {
                        "__obj_uid": null,
                        "__objt_code": null,
                        "__tsk_uid": null
                    };
                    urlAvailable = "../ajax/AnySelect.ashx?sql=Checklist2.GetAvailableChecklists.sql&format=1";
                    return [4, ajax.fetchJSON(urlAvailable, params)];
                case 1:
                    allChecklistsData = _a.sent();
                    allChecklists = new table_wrapper_js_1.TableWrapper(allChecklistsData.data.tables[0].columns, allChecklistsData.data.tables[0].rows, false);
                    return [4, newChecklistDialogue(allChecklists, pd.userLanguage)];
                case 2:
                    openDialogue = _a.sent();
                    document.getElementById("mainContainer").appendChild(openDialogue);
                    return [2];
            }
        });
    });
}
function onDataSetSelected(ev) {
    return __awaiter(this, void 0, void 0, function () {
        var row, cls_uid, popup, pd;
        return __generator(this, function (_a) {
            console.log("onDataSetSelected");
            row = getSelectedRow(ev);
            cls_uid = row.getAttribute("name");
            popup = getPopopContainer(ev.currentTarget);
            popup.parentNode.removeChild(popup);
            pd = getPortalData();
            loadChecklist(pd.proc, null, cls_uid, true);
            return [2];
        });
    });
}
function loadDataSetSelectionDialogue(checkListSets, cl_name) {
    return __awaiter(this, void 0, void 0, function () {
        var userLanguage, useClose, useActiveInactive, useDelete, useLoad, useNew, ce, fragment, divChecklistsPopup, closeChecklistButton, dialogueTitle, checklistBody, checklistContainer, colors, subtract, i, color, checklistRow, lblContainer, lblChecklistDesignation, btnActiveInactive, btnDelete, btnLoad, footerRow, spanNewChecklist, spanNewChecklist;
        return __generator(this, function (_a) {
            userLanguage = "de";
            useClose = false;
            useActiveInactive = false;
            useDelete = false;
            useLoad = true;
            useNew = true;
            ce = document.createElement;
            fragment = document.createDocumentFragment();
            divChecklistsPopup = document.createElement("DIV");
            divChecklistsPopup.setAttribute("id", "Checklists_Popup");
            divChecklistsPopup.setAttribute("class", "Popup noselect");
            divChecklistsPopup.setAttribute("tabindex", "1");
            divChecklistsPopup.setAttribute("style", "border: 1px solid black; background-color: rgb(102, 102, 102); box-sizing: border-box; box-shadow: rgb(0, 0, 0) 5px 5px 6px 0px; color: rgb(255, 255, 255); display: block; font-family: Arial, Helvetica, sans-serif; font-size: 11px; height: auto; left: 50%; margin-left: 0px; margin-right: 0px; max-height: 75%; max-width: 75%; min-width: 25%; overflow: hidden; position: absolute; top: 50%; width: 480px; z-index: 2000000000; transform: translate(-50%, -50%);");
            if (useClose) {
                closeChecklistButton = document.createElement("DIV");
                closeChecklistButton.setAttribute("class", "closeImage");
                closeChecklistButton.setAttribute("style", "background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHMSURBVHjapFO/S0JRFP4UIUJIqMWgLQzalAyKIN4TxNXJoZaGIPwHXNMt/A+C1pZabKgQQd9kQ4pS0KBUi4MNNgT+ev54nXPeVTRoqQvfu+ee7zvnnnPvfQ7LsvCf4ZLvSZi/ScIpQScYv+g1QoGQEv15zk4wHo0k2BmJYJzNskB3XuTnkoyPQxKsNLwRnJTEycZwOJRgDAbgmdYF82hfmwSzzb4fGkni4DPoHu5K9sVw2I5wu9HNZKDagXDRKNBuy6Kbywm3ePlgSAUD0zQI+tftLdDrAa0WOIB8BYYEk4851rCWY1Qb1IJpYum6bNCsf97f0xZdoNHAUiwmYJt9zLFGaTFNMOj3ZbF882yQrX9ks0CnA9RqNshmH3OsmY1xqRampz21PR6g2bRtr3dOM6ubq+B9b1Uju7AWjwNvb3YVDLLZxxxrZmPkFurbK9NH4kskgHxeyHqpJLMvGLS3DYVQT6cnt2P4HluY3ILGpy3Bd3dy2i/F4uS0dbbldohjjbod+51wBU+bC5Z1dWZZBzsCXhM05hSviUbxrJU1cdJCZcMlTzng96NSrUqJZM89ZfJLizOaVKA2TEqC8rrjTz/T1quq4D/jW4ABAF7lQOO4C9PnAAAAAElFTkSuQmCC'); background-repeat: no-repeat; background-position: 50% 50%; cursor: pointer; height: 25px; position: absolute; right: 0px; top: 0px; width: 25px; z-index: 1;");
                closeChecklistButton.onclick = onChecklistClose;
                divChecklistsPopup.appendChild(closeChecklistButton);
            }
            dialogueTitle = document.createElement("DIV");
            dialogueTitle.setAttribute("class", "Title");
            dialogueTitle.setAttribute("style", "background: rgb(61, 61, 61); border-top: none; border-right: none; border-bottom: 1px solid black; border-left: none; border-image: initial; color: orange; line-height: 25px; height: 25px; text-indent: 5px;");
            dialogueTitle.appendChild(document.createTextNode(getTranslation("SelectVersion", userLanguage) + " (" + cl_name + ")"));
            divChecklistsPopup.appendChild(dialogueTitle);
            checklistBody = document.createElement("DIV");
            checklistBody.setAttribute("class", "Body");
            checklistBody.setAttribute("style", "margin-top: 0px; position: relative; width: 100%;");
            checklistContainer = document.createElement("DIV");
            checklistContainer.setAttribute("class", "Content");
            checklistContainer.setAttribute("style", "margin-top: 0px; overflow: hidden scroll; width: 100%; max-height: 695px;");
            colors = ["rgb(118, 118, 118)", "rgb(102, 102, 102)"];
            subtract = 0;
            subtract += (useActiveInactive ? 41 : 0);
            subtract += (useDelete ? 41 : 0);
            subtract += (useLoad ? 41 : 0);
            for (i = 0; i < checkListSets.rowCount; ++i) {
                color = colors[i % 2];
                checklistRow = document.createElement("DIV");
                checklistRow.setAttribute("name", checkListSets.row(i).k);
                checklistRow.setAttribute("class", "pu_content");
                checklistRow.setAttribute("style", "background-color: " + color + "; clear: both; overflow: hidden; position: relative; width: 100%; white-space: nowrap;");
                lblContainer = document.createElement("DIV");
                lblContainer.setAttribute("class", "CL_Lang");
                lblContainer.setAttribute("title", getTranslation("OverrideChecklistName", userLanguage));
                lblContainer.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: calc((100% - " + subtract.toString() + "px) / 1);");
                lblChecklistDesignation = document.createElement("P");
                lblChecklistDesignation.setAttribute("style", "box-shadow: none;");
                lblChecklistDesignation.appendChild(document.createTextNode(checkListSets.row(i).v));
                lblContainer.appendChild(lblChecklistDesignation);
                checklistRow.appendChild(lblContainer);
                if (useActiveInactive) {
                    btnActiveInactive = document.createElement("DIV");
                    btnActiveInactive.setAttribute("class", "_STATUS");
                    btnActiveInactive.setAttribute("title", getTranslation("ChecklistStatus", userLanguage));
                    btnActiveInactive.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-left: 1px solid rgb(61, 61, 61); border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAAVCAYAAACpF6WWAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAA7DAAAOwwHHb6hkAAAAGHRFWHRTb2Z0d2FyZQBQYWludC5ORVQgdjMuMzap5+IlAAABH0lEQVQ4T2NgGHFA8QRDFQhTxeNypxkkFU4yHAYauI4qBiocZ/ADGngLiOdgGCgT2PCfVCxbE/hf8STDf6wGgmwAGUgKaH1YAjZQfo3cf5xeJsXQ8rvJYANDr9qAfUexoVOetoINdLyg+v/ut5uUG7ru9WKwgSC8+91GcGhR5NLjH/fDDQS5FgYIGgrSCAqn9FuBKHH25c9nsHdh4YgsiddQ2cw0uEtAmkGxCwMgS2Dh+PLnMxQLCboUOcxALgMZsPDFFLhlIDY6IGgoSAMs/YFcBnIhLm8THaYwhTCDYDENokHhjQ0Q5VKQRljihhmKHnFERxRyjgKFJcy1sESOKwsT7VKQASDXgVwMSk74AEFDUUqppByiSy2qlKHEGAIAeYG2SZ7gzdMAAAAASUVORK5CYII='); cursor: pointer;");
                    checklistRow.appendChild(btnActiveInactive);
                }
                if (useDelete) {
                    btnDelete = document.createElement("DIV");
                    btnDelete.setAttribute("class", "_REMOVE");
                    btnDelete.setAttribute("title", getTranslation("DeleteEntry", userLanguage));
                    btnDelete.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/gif;base64,R0lGODlhDwAPAOccAAAAAIAAAACAAICAAAAAgIAAgACAgMDAwMDcwKbK8P+EhP8ICP8QEP8YGP8hIf85Of9CQv9SUv9jY/9zc/+EhP+lpf+trf+1tf/Gxv/Ozv/v7//39//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////78KCgpICAgP8AAP///////////////////////yH5BAEKAP8ALAAAAAAPAA8AAAgxAP8JHEiwoMGDCBMqXMjwn4MFAhs4UOjAAYOJC/NBXOggXz6MCC1GBNmwpMmTKAUGBAA7'); cursor: pointer;");
                    checklistRow.appendChild(btnDelete);
                }
                if (useLoad) {
                    btnLoad = document.createElement("DIV");
                    btnLoad.setAttribute("class", "_SELECT");
                    btnLoad.setAttribute("title", getTranslation("LoadChecklistForEditing", userLanguage));
                    btnLoad.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border: none; border-left: 1px solid rgb(61, 61, 61); border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/gif;base64,R0lGODlhEAAQAMQAAP///yJjjN3d3fr7/El/oCdnjy9sk5+7zaG9zuju81aIp1mKqCppkFOGpkyAovf5+z93m42uw9jj6yxqkWORrr7R3bvP3GiVsd3n7QAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAAQABAAAAVnoCCOZCkCaKqqJzogS1EsyJC2iRPsvJOgpwGBRwwQbCfEjiGhFBGAk2JnQFkgPEVUAChQU4/IrrDtflHh3aTcOFewu0b5sMRcioeysMg7lgEJQ0UEP38AAwcLOwoHNkBcK5GPJpQiIQA7'); cursor: pointer;");
                    btnLoad.onclick = onDataSetSelected;
                    checklistRow.appendChild(btnLoad);
                    checklistContainer.appendChild(checklistRow);
                }
            }
            checklistBody.appendChild(checklistContainer);
            divChecklistsPopup.appendChild(checklistBody);
            footerRow = document.createElement("DIV");
            footerRow.setAttribute("class", "EmptyRow");
            footerRow.setAttribute("style", "background-color: rgb(61, 61, 61); clear: both; line-height: 25px; padding-left: 5px; padding-right: 5px; width: 100%;");
            if (useNew) {
                spanNewChecklist = document.createElement("SPAN");
                spanNewChecklist.setAttribute("class", "tableAdd");
                spanNewChecklist.appendChild(document.createTextNode(getTranslation("NewChecklist", userLanguage)));
                footerRow.appendChild(spanNewChecklist);
                footerRow.onclick = onLoadNewChecklistDialogue;
            }
            else {
                spanNewChecklist = document.createElement("SPAN");
                spanNewChecklist.appendChild(document.createTextNode("\xa0"));
                footerRow.appendChild(spanNewChecklist);
            }
            divChecklistsPopup.appendChild(footerRow);
            fragment.appendChild(divChecklistsPopup);
            return [2, fragment];
        });
    });
}
function onExistingChecklistSelected(ev) {
    return __awaiter(this, void 0, void 0, function () {
        var row, cl_uid, cl_name, popup, versionDialogue;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    console.log("onExistingChecklistSelected");
                    row = getSelectedRow(ev);
                    cl_uid = row.getAttribute("data-cl_uid");
                    cl_name = row.getAttribute("data-cl_name");
                    popup = getPopopContainer(ev.currentTarget);
                    popup.parentNode.removeChild(popup);
                    return [4, openVersionSelection(cl_uid, cl_name, null)];
                case 1:
                    versionDialogue = _a.sent();
                    document.getElementById("mainContainer").appendChild(versionDialogue);
                    return [2];
            }
        });
    });
}
function openChecklistDialogue(checklists, userLanguage) {
    return __awaiter(this, void 0, void 0, function () {
        var useClose, useActiveInactive, useDelete, useLoad, useNew, ce, fragment, divChecklistsPopup, closeChecklistButton, dialogueTitle, checklistBody, checklistContainer, colors, subtract, i, color, checklistRow, lblContainer, lblChecklistDesignation, btnActiveInactive, btnDelete, btnLoad, footerRow, spanNewChecklist, spanNewChecklist;
        return __generator(this, function (_a) {
            useClose = false;
            useActiveInactive = false;
            useDelete = false;
            useLoad = true;
            useNew = true;
            ce = document.createElement;
            fragment = document.createDocumentFragment();
            divChecklistsPopup = document.createElement("DIV");
            divChecklistsPopup.setAttribute("id", "Checklists_Popup");
            divChecklistsPopup.setAttribute("class", "Popup noselect");
            divChecklistsPopup.setAttribute("tabindex", "1");
            divChecklistsPopup.setAttribute("style", "border: 1px solid black; background-color: rgb(102, 102, 102); box-sizing: border-box; box-shadow: rgb(0, 0, 0) 5px 5px 6px 0px; color: rgb(255, 255, 255); display: block; font-family: Arial, Helvetica, sans-serif; font-size: 11px; height: auto; left: 50%; margin-left: 0px; margin-right: 0px; max-height: 75%; max-width: 75%; min-width: 25%; overflow: hidden; position: absolute; top: 50%; width: 480px; z-index: 2000000000; transform: translate(-50%, -50%);");
            if (useClose) {
                closeChecklistButton = document.createElement("DIV");
                closeChecklistButton.setAttribute("class", "closeImage");
                closeChecklistButton.setAttribute("style", "background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHMSURBVHjapFO/S0JRFP4UIUJIqMWgLQzalAyKIN4TxNXJoZaGIPwHXNMt/A+C1pZabKgQQd9kQ4pS0KBUi4MNNgT+ev54nXPeVTRoqQvfu+ee7zvnnnPvfQ7LsvCf4ZLvSZi/ScIpQScYv+g1QoGQEv15zk4wHo0k2BmJYJzNskB3XuTnkoyPQxKsNLwRnJTEycZwOJRgDAbgmdYF82hfmwSzzb4fGkni4DPoHu5K9sVw2I5wu9HNZKDagXDRKNBuy6Kbywm3ePlgSAUD0zQI+tftLdDrAa0WOIB8BYYEk4851rCWY1Qb1IJpYum6bNCsf97f0xZdoNHAUiwmYJt9zLFGaTFNMOj3ZbF882yQrX9ks0CnA9RqNshmH3OsmY1xqRampz21PR6g2bRtr3dOM6ubq+B9b1Uju7AWjwNvb3YVDLLZxxxrZmPkFurbK9NH4kskgHxeyHqpJLMvGLS3DYVQT6cnt2P4HluY3ILGpy3Bd3dy2i/F4uS0dbbldohjjbod+51wBU+bC5Z1dWZZBzsCXhM05hSviUbxrJU1cdJCZcMlTzng96NSrUqJZM89ZfJLizOaVKA2TEqC8rrjTz/T1quq4D/jW4ABAF7lQOO4C9PnAAAAAElFTkSuQmCC'); background-repeat: no-repeat; background-position: 50% 50%; cursor: pointer; height: 25px; position: absolute; right: 0px; top: 0px; width: 25px; z-index: 1;");
                closeChecklistButton.onclick = onChecklistClose;
                divChecklistsPopup.appendChild(closeChecklistButton);
            }
            dialogueTitle = document.createElement("DIV");
            dialogueTitle.setAttribute("class", "Title");
            dialogueTitle.setAttribute("style", "background: rgb(61, 61, 61); border-top: none; border-right: none; border-bottom: 1px solid black; border-left: none; border-image: initial; color: orange; line-height: 25px; height: 25px; text-indent: 5px;");
            dialogueTitle.appendChild(document.createTextNode(getTranslation("OpenChecklist", userLanguage)));
            divChecklistsPopup.appendChild(dialogueTitle);
            checklistBody = document.createElement("DIV");
            checklistBody.setAttribute("class", "Body");
            checklistBody.setAttribute("style", "margin-top: 0px; position: relative; width: 100%;");
            checklistContainer = document.createElement("DIV");
            checklistContainer.setAttribute("class", "Content");
            checklistContainer.setAttribute("style", "margin-top: 0px; overflow: hidden scroll; width: 100%; max-height: 695px;");
            colors = ["rgb(118, 118, 118)", "rgb(102, 102, 102)"];
            subtract = 0;
            subtract += (useActiveInactive ? 41 : 0);
            subtract += (useDelete ? 41 : 0);
            subtract += (useLoad ? 41 : 0);
            for (i = 0; i < checklists.rowCount; ++i) {
                color = colors[i % 2];
                checklistRow = document.createElement("DIV");
                checklistRow.setAttribute("data-cl_uid", checklists.row(i).CL_UID);
                checklistRow.setAttribute("data-cl_name", checklists.row(i).CL_Name);
                checklistRow.setAttribute("class", "pu_content");
                checklistRow.setAttribute("style", "background-color: " + color + "; clear: both; overflow: hidden; position: relative; width: 100%; white-space: nowrap;");
                lblContainer = document.createElement("DIV");
                lblContainer.setAttribute("class", "CL_Lang");
                lblContainer.setAttribute("title", getTranslation("OverrideChecklistName", userLanguage));
                lblContainer.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: calc((100% - " + subtract.toString() + "px) / 1);");
                lblChecklistDesignation = document.createElement("P");
                lblChecklistDesignation.setAttribute("style", "box-shadow: none;");
                lblChecklistDesignation.appendChild(document.createTextNode(checklists.row(i).CL_Name));
                lblContainer.appendChild(lblChecklistDesignation);
                checklistRow.appendChild(lblContainer);
                if (useActiveInactive) {
                    btnActiveInactive = document.createElement("DIV");
                    btnActiveInactive.setAttribute("class", "_STATUS");
                    btnActiveInactive.setAttribute("title", getTranslation("ChecklistStatus", userLanguage));
                    btnActiveInactive.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-left: 1px solid rgb(61, 61, 61); border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAAVCAYAAACpF6WWAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAA7DAAAOwwHHb6hkAAAAGHRFWHRTb2Z0d2FyZQBQYWludC5ORVQgdjMuMzap5+IlAAABH0lEQVQ4T2NgGHFA8QRDFQhTxeNypxkkFU4yHAYauI4qBiocZ/ADGngLiOdgGCgT2PCfVCxbE/hf8STDf6wGgmwAGUgKaH1YAjZQfo3cf5xeJsXQ8rvJYANDr9qAfUexoVOetoINdLyg+v/ut5uUG7ru9WKwgSC8+91GcGhR5NLjH/fDDQS5FgYIGgrSCAqn9FuBKHH25c9nsHdh4YgsiddQ2cw0uEtAmkGxCwMgS2Dh+PLnMxQLCboUOcxALgMZsPDFFLhlIDY6IGgoSAMs/YFcBnIhLm8THaYwhTCDYDENokHhjQ0Q5VKQRljihhmKHnFERxRyjgKFJcy1sESOKwsT7VKQASDXgVwMSk74AEFDUUqppByiSy2qlKHEGAIAeYG2SZ7gzdMAAAAASUVORK5CYII='); cursor: pointer;");
                    checklistRow.appendChild(btnActiveInactive);
                }
                if (useDelete) {
                    btnDelete = document.createElement("DIV");
                    btnDelete.setAttribute("class", "_REMOVE");
                    btnDelete.setAttribute("title", getTranslation("DeleteEntry", userLanguage));
                    btnDelete.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/gif;base64,R0lGODlhDwAPAOccAAAAAIAAAACAAICAAAAAgIAAgACAgMDAwMDcwKbK8P+EhP8ICP8QEP8YGP8hIf85Of9CQv9SUv9jY/9zc/+EhP+lpf+trf+1tf/Gxv/Ozv/v7//39//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////78KCgpICAgP8AAP///////////////////////yH5BAEKAP8ALAAAAAAPAA8AAAgxAP8JHEiwoMGDCBMqXMjwn4MFAhs4UOjAAYOJC/NBXOggXz6MCC1GBNmwpMmTKAUGBAA7'); cursor: pointer;");
                    checklistRow.appendChild(btnDelete);
                }
                if (useLoad) {
                    btnLoad = document.createElement("DIV");
                    btnLoad.setAttribute("class", "_SELECT");
                    btnLoad.setAttribute("title", getTranslation("LoadChecklistForEditing", userLanguage));
                    btnLoad.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border: none; border-left: 1px solid rgb(61, 61, 61); border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/gif;base64,R0lGODlhEAAQAMQAAP///yJjjN3d3fr7/El/oCdnjy9sk5+7zaG9zuju81aIp1mKqCppkFOGpkyAovf5+z93m42uw9jj6yxqkWORrr7R3bvP3GiVsd3n7QAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAAQABAAAAVnoCCOZCkCaKqqJzogS1EsyJC2iRPsvJOgpwGBRwwQbCfEjiGhFBGAk2JnQFkgPEVUAChQU4/IrrDtflHh3aTcOFewu0b5sMRcioeysMg7lgEJQ0UEP38AAwcLOwoHNkBcK5GPJpQiIQA7'); cursor: pointer;");
                    btnLoad.onclick = onExistingChecklistSelected;
                    checklistRow.appendChild(btnLoad);
                    checklistContainer.appendChild(checklistRow);
                }
            }
            checklistBody.appendChild(checklistContainer);
            divChecklistsPopup.appendChild(checklistBody);
            footerRow = document.createElement("DIV");
            footerRow.setAttribute("class", "EmptyRow");
            footerRow.setAttribute("style", "background-color: rgb(61, 61, 61); clear: both; line-height: 25px; padding-left: 5px; padding-right: 5px; width: 100%;");
            if (useNew) {
                spanNewChecklist = document.createElement("SPAN");
                spanNewChecklist.setAttribute("class", "tableAdd");
                spanNewChecklist.appendChild(document.createTextNode(getTranslation("NewChecklist", userLanguage)));
                footerRow.appendChild(spanNewChecklist);
                footerRow.onclick = onLoadNewChecklistDialogue;
            }
            else {
                spanNewChecklist = document.createElement("SPAN");
                spanNewChecklist.appendChild(document.createTextNode("\xa0"));
                footerRow.appendChild(spanNewChecklist);
            }
            divChecklistsPopup.appendChild(footerRow);
            fragment.appendChild(divChecklistsPopup);
            return [2, fragment];
        });
    });
}
function onNewChecklistSelected(ev) {
    return __awaiter(this, void 0, void 0, function () {
        var row, cl_uid, popup, pd;
        return __generator(this, function (_a) {
            console.log("onNewChecklistSelected");
            row = getSelectedRow(ev);
            cl_uid = row.getAttribute("name");
            popup = getPopopContainer(ev.currentTarget);
            popup.parentNode.removeChild(popup);
            pd = getPortalData();
            loadChecklist(pd.proc, cl_uid, null, false);
            return [2];
        });
    });
}
function newChecklistDialogue(checklists, userLanguage) {
    return __awaiter(this, void 0, void 0, function () {
        var useClose, useActiveInactive, useDelete, useLoad, useNew, ce, fragment, divChecklistsPopup, closeChecklistButton, dialogueTitle, checklistBody, checklistContainer, colors, subtract, i, color, checklistRow, lblContainer, lblChecklistDesignation, btnActiveInactive, btnDelete, btnLoad, footerRow, spanNewChecklist, spanNewChecklist;
        return __generator(this, function (_a) {
            useClose = false;
            useActiveInactive = false;
            useDelete = false;
            useLoad = true;
            useNew = false;
            ce = document.createElement;
            fragment = document.createDocumentFragment();
            divChecklistsPopup = document.createElement("DIV");
            divChecklistsPopup.setAttribute("id", "Checklists_Popup");
            divChecklistsPopup.setAttribute("class", "Popup noselect");
            divChecklistsPopup.setAttribute("tabindex", "1");
            divChecklistsPopup.setAttribute("style", "border: 1px solid black; background-color: rgb(102, 102, 102); box-sizing: border-box; box-shadow: rgb(0, 0, 0) 5px 5px 6px 0px; color: rgb(255, 255, 255); display: block; font-family: Arial, Helvetica, sans-serif; font-size: 11px; height: auto; left: 50%; margin-left: 0px; margin-right: 0px; max-height: 75%; max-width: 75%; min-width: 25%; overflow: hidden; position: absolute; top: 50%; width: 480px; z-index: 2000000000; transform: translate(-50%, -50%);");
            if (useClose) {
                closeChecklistButton = document.createElement("DIV");
                closeChecklistButton.setAttribute("class", "closeImage");
                closeChecklistButton.setAttribute("style", "background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHMSURBVHjapFO/S0JRFP4UIUJIqMWgLQzalAyKIN4TxNXJoZaGIPwHXNMt/A+C1pZabKgQQd9kQ4pS0KBUi4MNNgT+ev54nXPeVTRoqQvfu+ee7zvnnnPvfQ7LsvCf4ZLvSZi/ScIpQScYv+g1QoGQEv15zk4wHo0k2BmJYJzNskB3XuTnkoyPQxKsNLwRnJTEycZwOJRgDAbgmdYF82hfmwSzzb4fGkni4DPoHu5K9sVw2I5wu9HNZKDagXDRKNBuy6Kbywm3ePlgSAUD0zQI+tftLdDrAa0WOIB8BYYEk4851rCWY1Qb1IJpYum6bNCsf97f0xZdoNHAUiwmYJt9zLFGaTFNMOj3ZbF882yQrX9ks0CnA9RqNshmH3OsmY1xqRampz21PR6g2bRtr3dOM6ubq+B9b1Uju7AWjwNvb3YVDLLZxxxrZmPkFurbK9NH4kskgHxeyHqpJLMvGLS3DYVQT6cnt2P4HluY3ILGpy3Bd3dy2i/F4uS0dbbldohjjbod+51wBU+bC5Z1dWZZBzsCXhM05hSviUbxrJU1cdJCZcMlTzng96NSrUqJZM89ZfJLizOaVKA2TEqC8rrjTz/T1quq4D/jW4ABAF7lQOO4C9PnAAAAAElFTkSuQmCC'); background-repeat: no-repeat; background-position: 50% 50%; cursor: pointer; height: 25px; position: absolute; right: 0px; top: 0px; width: 25px; z-index: 1;");
                closeChecklistButton.onclick = onChecklistClose;
                divChecklistsPopup.appendChild(closeChecklistButton);
            }
            dialogueTitle = document.createElement("DIV");
            dialogueTitle.setAttribute("class", "Title");
            dialogueTitle.setAttribute("style", "background: rgb(61, 61, 61); border-top: none; border-right: none; border-bottom: 1px solid black; border-left: none; border-image: initial; color: orange; line-height: 25px; height: 25px; text-indent: 5px;");
            dialogueTitle.appendChild(document.createTextNode(getTranslation("NewChecklist", userLanguage)));
            divChecklistsPopup.appendChild(dialogueTitle);
            checklistBody = document.createElement("DIV");
            checklistBody.setAttribute("class", "Body");
            checklistBody.setAttribute("style", "margin-top: 0px; position: relative; width: 100%;");
            checklistContainer = document.createElement("DIV");
            checklistContainer.setAttribute("class", "Content");
            checklistContainer.setAttribute("style", "margin-top: 0px; overflow: hidden scroll; width: 100%; max-height: 695px;");
            colors = ["rgb(118, 118, 118)", "rgb(102, 102, 102)"];
            subtract = 0;
            subtract += (useActiveInactive ? 41 : 0);
            subtract += (useDelete ? 41 : 0);
            subtract += (useLoad ? 41 : 0);
            for (i = 0; i < checklists.rowCount; ++i) {
                color = colors[i % 2];
                checklistRow = document.createElement("DIV");
                checklistRow.setAttribute("name", checklists.row(i).CL_UID);
                checklistRow.setAttribute("class", "pu_content");
                checklistRow.setAttribute("style", "background-color: " + color + "; clear: both; overflow: hidden; position: relative; width: 100%; white-space: nowrap;");
                lblContainer = document.createElement("DIV");
                lblContainer.setAttribute("class", "CL_Lang");
                lblContainer.setAttribute("title", getTranslation("OverrideChecklistName", userLanguage));
                lblContainer.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: calc((100% - " + subtract.toString() + "px) / 1);");
                lblChecklistDesignation = document.createElement("P");
                lblChecklistDesignation.setAttribute("style", "box-shadow: none;");
                lblChecklistDesignation.appendChild(document.createTextNode(checklists.row(i).CL_Name));
                lblContainer.appendChild(lblChecklistDesignation);
                checklistRow.appendChild(lblContainer);
                if (useActiveInactive) {
                    btnActiveInactive = document.createElement("DIV");
                    btnActiveInactive.setAttribute("class", "_STATUS");
                    btnActiveInactive.setAttribute("title", getTranslation("ChecklistStatus", userLanguage));
                    btnActiveInactive.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-left: 1px solid rgb(61, 61, 61); border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAAVCAYAAACpF6WWAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAA7DAAAOwwHHb6hkAAAAGHRFWHRTb2Z0d2FyZQBQYWludC5ORVQgdjMuMzap5+IlAAABH0lEQVQ4T2NgGHFA8QRDFQhTxeNypxkkFU4yHAYauI4qBiocZ/ADGngLiOdgGCgT2PCfVCxbE/hf8STDf6wGgmwAGUgKaH1YAjZQfo3cf5xeJsXQ8rvJYANDr9qAfUexoVOetoINdLyg+v/ut5uUG7ru9WKwgSC8+91GcGhR5NLjH/fDDQS5FgYIGgrSCAqn9FuBKHH25c9nsHdh4YgsiddQ2cw0uEtAmkGxCwMgS2Dh+PLnMxQLCboUOcxALgMZsPDFFLhlIDY6IGgoSAMs/YFcBnIhLm8THaYwhTCDYDENokHhjQ0Q5VKQRljihhmKHnFERxRyjgKFJcy1sESOKwsT7VKQASDXgVwMSk74AEFDUUqppByiSy2qlKHEGAIAeYG2SZ7gzdMAAAAASUVORK5CYII='); cursor: pointer;");
                    checklistRow.appendChild(btnActiveInactive);
                }
                if (useDelete) {
                    btnDelete = document.createElement("DIV");
                    btnDelete.setAttribute("class", "_REMOVE");
                    btnDelete.setAttribute("title", getTranslation("DeleteEntry", userLanguage));
                    btnDelete.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/gif;base64,R0lGODlhDwAPAOccAAAAAIAAAACAAICAAAAAgIAAgACAgMDAwMDcwKbK8P+EhP8ICP8QEP8YGP8hIf85Of9CQv9SUv9jY/9zc/+EhP+lpf+trf+1tf/Gxv/Ozv/v7//39//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////78KCgpICAgP8AAP///////////////////////yH5BAEKAP8ALAAAAAAPAA8AAAgxAP8JHEiwoMGDCBMqXMjwn4MFAhs4UOjAAYOJC/NBXOggXz6MCC1GBNmwpMmTKAUGBAA7'); cursor: pointer;");
                    checklistRow.appendChild(btnDelete);
                }
                if (useLoad) {
                    btnLoad = document.createElement("DIV");
                    btnLoad.setAttribute("class", "_SELECT");
                    btnLoad.setAttribute("title", getTranslation("LoadChecklistForEditing", userLanguage));
                    btnLoad.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border: none; border-left: 1px solid rgb(61, 61, 61); border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/gif;base64,R0lGODlhEAAQAMQAAP///yJjjN3d3fr7/El/oCdnjy9sk5+7zaG9zuju81aIp1mKqCppkFOGpkyAovf5+z93m42uw9jj6yxqkWORrr7R3bvP3GiVsd3n7QAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAAQABAAAAVnoCCOZCkCaKqqJzogS1EsyJC2iRPsvJOgpwGBRwwQbCfEjiGhFBGAk2JnQFkgPEVUAChQU4/IrrDtflHh3aTcOFewu0b5sMRcioeysMg7lgEJQ0UEP38AAwcLOwoHNkBcK5GPJpQiIQA7'); cursor: pointer;");
                    btnLoad.onclick = onNewChecklistSelected;
                    checklistRow.appendChild(btnLoad);
                    checklistContainer.appendChild(checklistRow);
                }
            }
            checklistBody.appendChild(checklistContainer);
            divChecklistsPopup.appendChild(checklistBody);
            footerRow = document.createElement("DIV");
            footerRow.setAttribute("class", "EmptyRow");
            footerRow.setAttribute("style", "background-color: rgb(61, 61, 61); clear: both; line-height: 25px; padding-left: 5px; padding-right: 5px; width: 100%;");
            if (useNew) {
                spanNewChecklist = document.createElement("SPAN");
                spanNewChecklist.setAttribute("class", "tableAdd");
                spanNewChecklist.appendChild(document.createTextNode(getTranslation("NewChecklist", userLanguage)));
                footerRow.appendChild(spanNewChecklist);
                footerRow.onclick = onLoadNewChecklistDialogue;
            }
            else {
                spanNewChecklist = document.createElement("SPAN");
                spanNewChecklist.appendChild(document.createTextNode("\xa0"));
                footerRow.appendChild(spanNewChecklist);
            }
            divChecklistsPopup.appendChild(footerRow);
            fragment.appendChild(divChecklistsPopup);
            return [2, fragment];
        });
    });
}
function addStylesheet(url, id) {
    var h = document.getElementsByTagName("head")[0];
    if (url.indexOf("?") != -1) {
        url += "&";
    }
    else
        url += "?";
    url += "no_cache=" + (new Date()).getTime().toString();
    var ss = document.createElement("LINK");
    if (id)
        ss.setAttribute("id", id);
    ss.setAttribute("rel", "stylesheet");
    ss.setAttribute("href", url);
    h.appendChild(ss);
}
function getObj(sess) {
    var obj = (sess.mainDS_TSK || sess.mainDS).main[0];
    var SO_UID = obj.SO_UID;
    var GB_UID = obj.GB_UID;
    var GS_UID = obj.GS_UID;
    var TK_UID = obj.TK_UID;
    var RM_UID = obj.RM_UID;
    var TSK_UID = obj.TSK_UID;
    var OBJ_UID = TSK_UID || SO_UID || GB_UID || GS_UID || TK_UID || RM_UID;
    var OBJT_Code = "";
    if (TSK_UID)
        OBJT_Code = "TSK";
    else if (SO_UID)
        OBJT_Code = "SO";
    else if (GB_UID)
        OBJT_Code = "GB";
    else if (GS_UID)
        OBJT_Code = "GS";
    else if (TK_UID)
        OBJT_Code = "TK";
    else if (RM_UID)
        OBJT_Code = "RM";
    if (OBJT_Code)
        OBJT_Code = OBJT_Code.toUpperCase();
    return { "OBJ_UID": OBJ_UID, "OBJT_Code": OBJT_Code };
}
function saveChecklist(cl_uid) {
    startWaiting();
    var evt = document.createEvent('CustomEvent');
    evt.initCustomEvent('saveChecklist', false, false, { "cl_uid": cl_uid });
    document.dispatchEvent(evt);
}
function onSave(ev) {
    return __awaiter(this, void 0, void 0, function () {
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    ev.preventDefault();
                    ev.stopPropagation();
                    if (onSaveChecklist != null)
                        onSaveChecklist();
                    return [4, createFooter(DisplayButtons.Cancel)];
                case 1:
                    _a.sent();
                    return [2, false];
            }
        });
    });
}
function onCancel(ev) {
    return __awaiter(this, void 0, void 0, function () {
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    ev.preventDefault();
                    ev.stopPropagation();
                    onSaveChecklist = null;
                    return [4, loadMainContainer()];
                case 1:
                    _a.sent();
                    return [4, createFooter(DisplayButtons.Cancel)];
                case 2:
                    _a.sent();
                    console.log("onCancel");
                    return [2, false];
            }
        });
    });
}
function postNewDownload(action, windowName, params) {
    windowName = windowName || "_blank";
    var form = document.createElement("form");
    form.setAttribute("id", "msg_" + uuid.uuidv4());
    form.setAttribute("method", "post");
    form.setAttribute("action", action);
    form.setAttribute("target", windowName);
    form.setAttribute("style", "display: none;");
    for (var tK in params) {
        if (params.hasOwnProperty(tK)) {
            var tV = params[tK];
            var hiddenField = document.createElement("input");
            hiddenField.setAttribute("name", tK);
            hiddenField.setAttribute("value", tV);
            form.appendChild(hiddenField);
        }
    }
    ;
    document.body.appendChild(form);
    form.submit();
    document.body.removeChild(form);
}
function onExport(ev) {
    return __awaiter(this, void 0, void 0, function () {
        var checklistData, saveData, exportData;
        return __generator(this, function (_a) {
            ev.preventDefault();
            ev.stopPropagation();
            console.log("onExport");
            checklistData = db_html.collectStructure(document.querySelector("table"));
            saveData = db_html.collectSaveData(document.querySelector("table"), "__cls_uid");
            exportData = {
                "checklistJSON": JSON.stringify(checklistData),
                "valuesJSON": JSON.stringify(saveData)
            };
            console.log("exportData2", exportData);
            postNewDownload("../ajax/ChecklistExport.ashx", "_blank", exportData);
            return [2, false];
        });
    });
}
var DisplayButtons;
(function (DisplayButtons) {
    DisplayButtons[DisplayButtons["None"] = 0] = "None";
    DisplayButtons[DisplayButtons["Cancel"] = 1] = "Cancel";
    DisplayButtons[DisplayButtons["Save"] = 2] = "Save";
    DisplayButtons[DisplayButtons["ExcelExport"] = 4] = "ExcelExport";
    DisplayButtons[DisplayButtons["Print"] = 8] = "Print";
    DisplayButtons[DisplayButtons["All"] = 15] = "All";
})(DisplayButtons || (DisplayButtons = {}));
function createFooter(availableButtons) {
    return __awaiter(this, void 0, void 0, function () {
        var pd, userLanguage, doc, main, oldButtonFrame, fragment, buttonFrame, spanUsername, divRight, btnExport, btnSave, divLeft, btnCancel;
        return __generator(this, function (_a) {
            pd = getPortalData();
            userLanguage = pd.userLanguage || "de";
            doc = window.parent.document;
            main = doc.getElementById("Main");
            oldButtonFrame = doc.getElementById("buttonFrame");
            if (oldButtonFrame != null)
                oldButtonFrame.parentElement.removeChild(oldButtonFrame);
            fragment = doc.createDocumentFragment();
            buttonFrame = doc.createElement("DIV");
            buttonFrame.setAttribute("class", "buttonFrame");
            buttonFrame.setAttribute("id", "buttonFrame");
            spanUsername = doc.createElement("SPAN");
            spanUsername.setAttribute("class", "bfUsername");
            spanUsername.appendChild(doc.createTextNode(pd.userName));
            buttonFrame.appendChild(spanUsername);
            divRight = doc.createElement("DIV");
            divRight.setAttribute("class", "Right");
            if ((availableButtons & DisplayButtons.ExcelExport) === DisplayButtons.ExcelExport) {
                btnExport = doc.createElement("INPUT");
                btnExport.setAttribute("type", "submit");
                btnExport.setAttribute("name", "btn_Export");
                btnExport.setAttribute("value", getTranslation("ExcelExportChecklist", userLanguage));
                btnExport.onclick = onExport;
                btnExport.setAttribute("style", "box-shadow: rgb(206, 206, 206) 10px 4px 9px -10px inset;");
                divRight.appendChild(btnExport);
            }
            if ((availableButtons & DisplayButtons.Save) === DisplayButtons.Save) {
                btnSave = doc.createElement("INPUT");
                btnSave.setAttribute("type", "submit");
                btnSave.setAttribute("name", "btn_Speichern");
                btnSave.setAttribute("value", getTranslation("SaveChecklist", userLanguage));
                btnSave.onclick = onSave;
                btnSave.setAttribute("style", "box-shadow: rgb(206, 206, 206) 10px 4px 9px -10px inset;");
                divRight.appendChild(btnSave);
            }
            buttonFrame.appendChild(divRight);
            divLeft = doc.createElement("DIV");
            divLeft.setAttribute("class", "Left");
            if ((availableButtons & DisplayButtons.Cancel) === DisplayButtons.Cancel) {
                btnCancel = doc.createElement("INPUT");
                btnCancel.setAttribute("type", "submit");
                btnCancel.setAttribute("id", "btn_Abbrechen");
                btnCancel.setAttribute("name", "btn_Abbrechen");
                btnCancel.setAttribute("value", getTranslation("CancelChecklist", userLanguage));
                btnCancel.setAttribute("class", "validate-skip");
                btnCancel.setAttribute("style", "box-shadow: rgb(206, 206, 206) 10px 4px 9px -10px inset;");
                btnCancel.onclick = onCancel;
                divLeft.appendChild(btnCancel);
            }
            buttonFrame.appendChild(divLeft);
            fragment.appendChild(buttonFrame);
            if (main != null)
                main.appendChild(fragment);
            return [2];
        });
    });
}
function openVersionSelection(cl_uid, cl_name, tsk_uid) {
    return __awaiter(this, void 0, void 0, function () {
        var params, checkListsData, checkListSets, df;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    params = {
                        "__cl_uid": null,
                        "__obj_uid": null,
                        "__objt_code": null,
                        "__tsk_uid": null,
                    };
                    params.__cl_uid = cl_uid;
                    params.__tsk_uid = tsk_uid;
                    return [4, ajax.fetchJSON("../ajax/AnySelect.ashx?sql=Checklist2.SelectSavedDataset.sql&format=1", params)];
                case 1:
                    checkListsData = _a.sent();
                    if (checkListsData.hasError) {
                        alert("Error loading checklist-data:\r\n" + checkListsData.error.message);
                        return [2];
                    }
                    checkListSets = new table_wrapper_js_1.TableWrapper(checkListsData.data.tables[0].columns, checkListsData.data.tables[0].rows, false);
                    return [4, loadDataSetSelectionDialogue(checkListSets, cl_name)];
                case 2:
                    df = _a.sent();
                    return [2, df];
            }
        });
    });
}
function loadMainContainer() {
    return __awaiter(this, void 0, void 0, function () {
        var pd, sess, obj, mainContainer, params, urlAvailable, allChecklistsData, availableChecklistsData, allChecklists, availableChecklists, cl_uid, cl_name, versionDialogue, openDialogue, newDialogue;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    pd = getPortalData();
                    return [4, ajax.fetchJSON("../ajax/CurrentSession.ashx")];
                case 1:
                    sess = _a.sent();
                    obj = getObj(sess);
                    mainContainer = document.getElementById("mainContainer");
                    clearHtmlElementContents(mainContainer);
                    params = {
                        "__obj_uid": null,
                        "__objt_code": null,
                        "__tsk_uid": null
                    };
                    urlAvailable = "../ajax/AnySelect.ashx?sql=Checklist2.GetAvailableChecklists.sql&format=1";
                    return [4, ajax.fetchJSON(urlAvailable, params)];
                case 2:
                    allChecklistsData = _a.sent();
                    if (obj.OBJT_Code === "TSK") {
                        params.__tsk_uid = obj.OBJ_UID;
                        params.__obj_uid = null;
                        params.__objt_code = null;
                    }
                    else {
                        params.__tsk_uid = null;
                        params.__obj_uid = obj.OBJ_UID;
                        params.__objt_code = obj.OBJT_Code;
                    }
                    return [4, ajax.fetchJSON(urlAvailable, params)];
                case 3:
                    availableChecklistsData = _a.sent();
                    if (allChecklistsData.hasError) {
                        console.log(allChecklistsData.error);
                        alert("Error loading checklist-data1:\r\n" + allChecklistsData.error.message);
                        return [2];
                    }
                    if (availableChecklistsData.hasError) {
                        console.log(availableChecklistsData.error);
                        alert("Error loading checklist-data2:\r\n" + availableChecklistsData.error.message);
                        return [2];
                    }
                    allChecklists = new table_wrapper_js_1.TableWrapper(allChecklistsData.data.tables[0].columns, allChecklistsData.data.tables[0].rows, false);
                    availableChecklists = new table_wrapper_js_1.TableWrapper(availableChecklistsData.data.tables[0].columns, availableChecklistsData.data.tables[0].rows, false);
                    if (!(availableChecklists.rowCount > 0)) return [3, 8];
                    if (!(availableChecklists.rowCount == 1)) return [3, 5];
                    cl_uid = availableChecklists.row(0).CL_UID;
                    cl_name = availableChecklists.row(0).CL_Name;
                    return [4, openVersionSelection(cl_uid, cl_name, null)];
                case 4:
                    versionDialogue = _a.sent();
                    mainContainer.appendChild(versionDialogue);
                    return [3, 7];
                case 5: return [4, openChecklistDialogue(availableChecklists, pd.userLanguage)];
                case 6:
                    openDialogue = _a.sent();
                    mainContainer.appendChild(openDialogue);
                    _a.label = 7;
                case 7: return [3, 10];
                case 8: return [4, newChecklistDialogue(allChecklists, pd.userLanguage)];
                case 9:
                    newDialogue = _a.sent();
                    mainContainer.appendChild(newDialogue);
                    _a.label = 10;
                case 10: return [2];
            }
        });
    });
}
function onDocumentReady() {
    return __awaiter(this, void 0, void 0, function () {
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: return [4, assertSession()];
                case 1:
                    _a.sent();
                    return [4, createFooter(DisplayButtons.Cancel)];
                case 2:
                    _a.sent();
                    return [4, loadMainContainer()];
                case 3:
                    _a.sent();
                    return [2];
            }
        });
    });
}
function saveOnFrameSwitching(iframe) {
    iframe.contentWindow.onbeforeunload = function () {
        debugger;
    };
}
function main() {
    return __awaiter(this, void 0, void 0, function () {
        return __generator(this, function (_a) {
            if (true) {
                addStylesheet("./css/Layout.css?v=1", "dialogueCSS");
                addStylesheet("../css/Scrolling/Scrollbar.css?v=1", "scrollbarCSS");
                addStylesheet("css/checklist.css?v=1", "checklistCSS");
            }
            if (document.addEventListener)
                document.addEventListener("DOMContentLoaded", onDocumentReady, false);
            else if (document.attachEvent)
                document.attachEvent("onreadystatechange", onDocumentReady);
            else
                window.onload = onDocumentReady;
            return [2];
        });
    });
}
exports.main = main;
