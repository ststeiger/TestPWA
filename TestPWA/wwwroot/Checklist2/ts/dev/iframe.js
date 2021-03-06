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
exports.createFooter = void 0;
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
function createFooter() {
    var doc = window.parent.document;
    var main = doc.getElementById("Main");
    var html = "<div class=\"buttonFrame\" id=\"buttonFrame\">\n  <span class=\"bfUsername\">D. Administrator&nbsp;</span>\n\n  <div class=\"Right\">\n    <input type=\"submit\" name=\"btn_Speichern\" value=\"Speichern\" onclick=\"javascript:console.log('hello');\" style=\"box-shadow: rgb(206, 206, 206) 10px 4px 9px -10px inset;\">\n  </div>\n\n  <div class=\"Left\">\n    <input type=\"submit\" name=\"btn_Abbrechen\" value=\"Abbrechen\" id=\"btn_Abbrechen\" class=\"validate-skip\" style=\"box-shadow: rgb(206, 206, 206) 10px 4px 9px -10px inset;\">\n  </div>\n</div>\n";
    var fragment = doc.createDocumentFragment();
    var buttonFrame = doc.createElement("DIV");
    buttonFrame.setAttribute("class", "buttonFrame");
    buttonFrame.setAttribute("id", "buttonFrame");
    var spanUsername = doc.createElement("SPAN");
    spanUsername.setAttribute("class", "bfUsername");
    spanUsername.appendChild(doc.createTextNode("D. Administrator??"));
    buttonFrame.appendChild(spanUsername);
    var divRight = doc.createElement("DIV");
    divRight.setAttribute("class", "Right");
    var btnSave = doc.createElement("INPUT");
    btnSave.setAttribute("type", "submit");
    btnSave.setAttribute("name", "btn_Speichern");
    btnSave.setAttribute("value", "Speichern");
    btnSave.setAttribute("onclick", "javascript:console.log('hello');");
    btnSave.setAttribute("style", "box-shadow: rgb(206, 206, 206) 10px 4px 9px -10px inset;");
    divRight.appendChild(btnSave);
    buttonFrame.appendChild(divRight);
    var divLeft = doc.createElement("DIV");
    divLeft.setAttribute("class", "Left");
    var btnCancel = doc.createElement("INPUT");
    btnCancel.setAttribute("type", "submit");
    btnCancel.setAttribute("name", "btn_Abbrechen");
    btnCancel.setAttribute("value", "Abbrechen");
    btnCancel.setAttribute("id", "btn_Abbrechen");
    btnCancel.setAttribute("class", "validate-skip");
    btnCancel.setAttribute("style", "box-shadow: rgb(206, 206, 206) 10px 4px 9px -10px inset;");
    divLeft.appendChild(btnCancel);
    buttonFrame.appendChild(divLeft);
    fragment.appendChild(buttonFrame);
    main.appendChild(fragment);
}
exports.createFooter = createFooter;
