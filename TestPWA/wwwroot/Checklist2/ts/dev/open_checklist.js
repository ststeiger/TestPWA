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
var table_wrapper_js_1 = require("./table_wrapper.js");
var ajax = require("./ajax.js");
function onChecklistClose(ev) {
    var divChecklistsPopup = ev.currentTarget.parentNode;
    divChecklistsPopup.parentNode.removeChild(divChecklistsPopup);
}
function onChecklistLoad(ev) {
    return __awaiter(this, void 0, void 0, function () {
        var btnLoad, popup, row, cl_uid;
        return __generator(this, function (_a) {
            btnLoad = ev.currentTarget;
            popup = btnLoad;
            row = btnLoad;
            while (row && !row.classList.contains("pu_content")) {
                row = row.parentElement;
            }
            cl_uid = row.getAttribute("name");
            while (popup && !popup.classList.contains("Popup")) {
                popup = popup.parentElement;
            }
            popup.parentNode.removeChild(popup);
            console.log("cl_uid", cl_uid);
            return [2];
        });
    });
}
function openChecklistDialogue() {
    return __awaiter(this, void 0, void 0, function () {
        var checkListsData, checklists, ce, fragment, divChecklistsPopup, closeChecklistButton, dialogueTitle, checklistBody, checklistContainer, colors, useActiveInactive, useDelete, useLoad, subtract, i, color, checklistRow, lblContainer, lblChecklistDesignation, btnActiveInactive, btnDelete, btnLoad, footerRow, spanNewChecklist, spanNewChecklist;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: return [4, ajax.fetchJSON("../ajax/AnySelect.ashx?sql=Checklist2.GetAvailableChecklists.sql&format=1")];
                case 1:
                    checkListsData = _a.sent();
                    if (checkListsData.hasError) {
                        alert("Error loading checklist-data:\r\n" + checkListsData.error.message);
                        return [2];
                    }
                    checklists = new table_wrapper_js_1.TableWrapper(checkListsData.data.tables[0].columns, checkListsData.data.tables[0].rows, false);
                    ce = document.createElement;
                    fragment = document.createDocumentFragment();
                    divChecklistsPopup = document.createElement("DIV");
                    divChecklistsPopup.setAttribute("id", "Checklists_Popup");
                    divChecklistsPopup.setAttribute("class", "Popup noselect");
                    divChecklistsPopup.setAttribute("tabindex", "1");
                    divChecklistsPopup.setAttribute("style", "border: 1px solid black; background-color: rgb(102, 102, 102); box-sizing: border-box; box-shadow: rgb(0, 0, 0) 5px 5px 6px 0px; color: rgb(255, 255, 255); display: block; font-family: Arial, Helvetica, sans-serif; font-size: 11px; height: auto; left: 50%; margin-left: 0px; margin-right: 0px; max-height: 75%; max-width: 75%; min-width: 25%; overflow: hidden; position: absolute; top: 50%; width: 480px; z-index: 2000000000; transform: translate(-50%, -50%);");
                    closeChecklistButton = document.createElement("DIV");
                    closeChecklistButton.setAttribute("class", "closeImage");
                    closeChecklistButton.setAttribute("style", "background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHMSURBVHjapFO/S0JRFP4UIUJIqMWgLQzalAyKIN4TxNXJoZaGIPwHXNMt/A+C1pZabKgQQd9kQ4pS0KBUi4MNNgT+ev54nXPeVTRoqQvfu+ee7zvnnnPvfQ7LsvCf4ZLvSZi/ScIpQScYv+g1QoGQEv15zk4wHo0k2BmJYJzNskB3XuTnkoyPQxKsNLwRnJTEycZwOJRgDAbgmdYF82hfmwSzzb4fGkni4DPoHu5K9sVw2I5wu9HNZKDagXDRKNBuy6Kbywm3ePlgSAUD0zQI+tftLdDrAa0WOIB8BYYEk4851rCWY1Qb1IJpYum6bNCsf97f0xZdoNHAUiwmYJt9zLFGaTFNMOj3ZbF882yQrX9ks0CnA9RqNshmH3OsmY1xqRampz21PR6g2bRtr3dOM6ubq+B9b1Uju7AWjwNvb3YVDLLZxxxrZmPkFurbK9NH4kskgHxeyHqpJLMvGLS3DYVQT6cnt2P4HluY3ILGpy3Bd3dy2i/F4uS0dbbldohjjbod+51wBU+bC5Z1dWZZBzsCXhM05hSviUbxrJU1cdJCZcMlTzng96NSrUqJZM89ZfJLizOaVKA2TEqC8rrjTz/T1quq4D/jW4ABAF7lQOO4C9PnAAAAAElFTkSuQmCC'); background-repeat: no-repeat; background-position: 50% 50%; cursor: pointer; height: 25px; position: absolute; right: 0px; top: 0px; width: 25px; z-index: 1;");
                    closeChecklistButton.onclick = onChecklistClose;
                    divChecklistsPopup.appendChild(closeChecklistButton);
                    dialogueTitle = document.createElement("DIV");
                    dialogueTitle.setAttribute("class", "Title");
                    dialogueTitle.setAttribute("style", "background: rgb(61, 61, 61); border-top: none; border-right: none; border-bottom: 1px solid black; border-left: none; border-image: initial; color: orange; line-height: 25px; height: 25px; text-indent: 5px;");
                    dialogueTitle.appendChild(document.createTextNode("Checkliste öffnen"));
                    divChecklistsPopup.appendChild(dialogueTitle);
                    checklistBody = document.createElement("DIV");
                    checklistBody.setAttribute("class", "Body");
                    checklistBody.setAttribute("style", "margin-top: 0px; position: relative; width: 100%;");
                    checklistContainer = document.createElement("DIV");
                    checklistContainer.setAttribute("class", "Content");
                    checklistContainer.setAttribute("style", "margin-top: 0px; overflow: hidden scroll; width: 100%; max-height: 695px;");
                    colors = ["rgb(118, 118, 118)", "rgb(102, 102, 102)"];
                    useActiveInactive = false;
                    useDelete = false;
                    useLoad = true;
                    subtract = 0;
                    subtract += (useActiveInactive ? 41 : 0);
                    subtract += (useDelete ? 41 : 0);
                    subtract += (useLoad ? 41 : 0);
                    for (i = 0; i < checklists.rowCount; ++i) {
                        console.log(i, checklists.row(i).CL_UID, checklists.row(i).CL_Name, checklists.row(i).CL_Title);
                        color = colors[i % 2];
                        checklistRow = document.createElement("DIV");
                        checklistRow.setAttribute("name", checklists.row(i).CL_UID);
                        checklistRow.setAttribute("class", "pu_content");
                        checklistRow.setAttribute("style", "background-color: " + color + "; clear: both; overflow: hidden; position: relative; width: 100%; white-space: nowrap;");
                        lblContainer = document.createElement("DIV");
                        lblContainer.setAttribute("class", "CL_Lang");
                        lblContainer.setAttribute("title", "Name\n    Durch das Überschreiben des Names in der Liste wird der Name der Checkliste geändert");
                        lblContainer.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: calc((100% - " + subtract.toString() + "px) / 1);");
                        lblChecklistDesignation = document.createElement("P");
                        lblChecklistDesignation.setAttribute("style", "box-shadow: none;");
                        lblChecklistDesignation.appendChild(document.createTextNode(checklists.row(i).CL_Name));
                        lblContainer.appendChild(lblChecklistDesignation);
                        checklistRow.appendChild(lblContainer);
                        if (useActiveInactive) {
                            btnActiveInactive = document.createElement("DIV");
                            btnActiveInactive.setAttribute("class", "_STATUS");
                            btnActiveInactive.setAttribute("title", "Status (aktiv | inaktiv)\n    Inaktive Checklisten sind nicht zuweisbar");
                            btnActiveInactive.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-left: 1px solid rgb(61, 61, 61); border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAAVCAYAAACpF6WWAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAA7DAAAOwwHHb6hkAAAAGHRFWHRTb2Z0d2FyZQBQYWludC5ORVQgdjMuMzap5+IlAAABH0lEQVQ4T2NgGHFA8QRDFQhTxeNypxkkFU4yHAYauI4qBiocZ/ADGngLiOdgGCgT2PCfVCxbE/hf8STDf6wGgmwAGUgKaH1YAjZQfo3cf5xeJsXQ8rvJYANDr9qAfUexoVOetoINdLyg+v/ut5uUG7ru9WKwgSC8+91GcGhR5NLjH/fDDQS5FgYIGgrSCAqn9FuBKHH25c9nsHdh4YgsiddQ2cw0uEtAmkGxCwMgS2Dh+PLnMxQLCboUOcxALgMZsPDFFLhlIDY6IGgoSAMs/YFcBnIhLm8THaYwhTCDYDENokHhjQ0Q5VKQRljihhmKHnFERxRyjgKFJcy1sESOKwsT7VKQASDXgVwMSk74AEFDUUqppByiSy2qlKHEGAIAeYG2SZ7gzdMAAAAASUVORK5CYII='); cursor: pointer;");
                            checklistRow.appendChild(btnActiveInactive);
                        }
                        if (useDelete) {
                            btnDelete = document.createElement("DIV");
                            btnDelete.setAttribute("class", "_REMOVE");
                            btnDelete.setAttribute("title", "Löschen\n    Gelöschte Checklisten erscheinen nach dem Schliessen des Fensters nicht mehr");
                            btnDelete.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/gif;base64,R0lGODlhDwAPAOccAAAAAIAAAACAAICAAAAAgIAAgACAgMDAwMDcwKbK8P+EhP8ICP8QEP8YGP8hIf85Of9CQv9SUv9jY/9zc/+EhP+lpf+trf+1tf/Gxv/Ozv/v7//39//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////78KCgpICAgP8AAP///////////////////////yH5BAEKAP8ALAAAAAAPAA8AAAgxAP8JHEiwoMGDCBMqXMjwn4MFAhs4UOjAAYOJC/NBXOggXz6MCC1GBNmwpMmTKAUGBAA7'); cursor: pointer;");
                            checklistRow.appendChild(btnDelete);
                        }
                        if (useLoad) {
                            btnLoad = document.createElement("DIV");
                            btnLoad.setAttribute("class", "_SELECT");
                            btnLoad.setAttribute("title", "Laden\n    Gewählte Checkliste zum Bearbeiten Laden");
                            btnLoad.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border: none; border-left: 1px solid rgb(61, 61, 61); border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/gif;base64,R0lGODlhEAAQAMQAAP///yJjjN3d3fr7/El/oCdnjy9sk5+7zaG9zuju81aIp1mKqCppkFOGpkyAovf5+z93m42uw9jj6yxqkWORrr7R3bvP3GiVsd3n7QAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAAQABAAAAVnoCCOZCkCaKqqJzogS1EsyJC2iRPsvJOgpwGBRwwQbCfEjiGhFBGAk2JnQFkgPEVUAChQU4/IrrDtflHh3aTcOFewu0b5sMRcioeysMg7lgEJQ0UEP38AAwcLOwoHNkBcK5GPJpQiIQA7'); cursor: pointer;");
                            btnLoad.onclick = onChecklistLoad;
                            checklistRow.appendChild(btnLoad);
                            checklistContainer.appendChild(checklistRow);
                        }
                    }
                    checklistBody.appendChild(checklistContainer);
                    divChecklistsPopup.appendChild(checklistBody);
                    footerRow = document.createElement("DIV");
                    footerRow.setAttribute("class", "EmptyRow");
                    footerRow.setAttribute("style", "background-color: rgb(61, 61, 61); clear: both; line-height: 25px; padding-left: 5px; padding-right: 5px; width: 100%;");
                    if (false) {
                        spanNewChecklist = document.createElement("SPAN");
                        spanNewChecklist.setAttribute("class", "tableAdd");
                        spanNewChecklist.appendChild(document.createTextNode("Neue Checkliste"));
                        footerRow.appendChild(spanNewChecklist);
                    }
                    else {
                        spanNewChecklist = document.createElement("SPAN");
                        spanNewChecklist.appendChild(document.createTextNode("\xa0"));
                        footerRow.appendChild(spanNewChecklist);
                    }
                    divChecklistsPopup.appendChild(footerRow);
                    fragment.appendChild(divChecklistsPopup);
                    return [2, fragment];
            }
        });
    });
}
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
function main() {
    return __awaiter(this, void 0, void 0, function () {
        var dialog;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    if (true) {
                        addStylesheet("./css/Layout.css?v=1");
                    }
                    return [4, openChecklistDialogue()];
                case 1:
                    dialog = _a.sent();
                    document.getElementById("mainContainer").appendChild(dialog);
                    return [2];
            }
        });
    });
}
exports.main = main;
