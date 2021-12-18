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
function postData(url, data) {
    if (url === void 0) { url = ''; }
    if (data === void 0) { data = {}; }
    return __awaiter(this, void 0, void 0, function () {
        var response;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: return [4, fetch(url, {
                        method: 'POST',
                        mode: 'cors',
                        cache: 'no-cache',
                        credentials: 'same-origin',
                        headers: {
                            'Content-Type': 'application/json',
                            "X-HTTP-Method-Override": "GET"
                        },
                        redirect: 'follow',
                        referrerPolicy: 'no-referrer',
                        body: JSON.stringify(data)
                    })];
                case 1:
                    response = _a.sent();
                    return [2, response.json()];
            }
        });
    });
}
function sendCustomFormData() {
    var formData = new FormData();
    var fileInputElement = document.getElementById("inp1");
    ;
    formData.append("username", "Groucho");
    formData.append("accountnum", "123456");
    formData.append("userfile", fileInputElement.files[0]);
    var content = '<a id="a"><b id="b">hey!</b></a>';
    var blob = new Blob([content], { type: "text/xml" });
    formData.append("webmasterfile", blob);
    var request = new XMLHttpRequest();
    request.open("POST", "http://foo.com/submitform.php");
    request.send(formData);
}
function sendExistingFormData() {
    var formElement = document.querySelector("existingFormId");
    var request2 = new XMLHttpRequest();
    request2.open("POST", "submitform.php");
    request2.send(new FormData(formElement));
}
function sendCustomizedExistingFormData() {
    var serialNumber = 123;
    var formElement2 = document.querySelector("form");
    var formData2 = new FormData(formElement2);
    var request3 = new XMLHttpRequest();
    request3.open("POST", "submitform.php");
    formData2.append("serialnumber", serialNumber.toString());
    request3.send(formData2);
}
function getSomething() {
    return __awaiter(this, void 0, void 0, function () {
        var resp, type, json;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: return [4, fetch('http://example.com/movies.json')];
                case 1:
                    resp = _a.sent();
                    type = resp.type;
                    if (!resp.ok) {
                        console.error("Status (no)", resp.status);
                        console.error("Status", resp.statusText);
                        throw new Error("HTTP error, status = " + resp.status);
                    }
                    if (resp.redirected) {
                        console.log("Response from:", resp.url);
                    }
                    if (resp.bodyUsed) {
                        console.log("body", resp.body);
                    }
                    return [4, resp.json()];
                case 2:
                    json = _a.sent();
                    console.log(JSON.stringify(json));
                    return [2];
            }
        });
    });
}
function postSomething() {
    return __awaiter(this, void 0, void 0, function () {
        function postData(url, data) {
            if (url === void 0) { url = ""; }
            if (data === void 0) { data = {}; }
            url = url || "";
            data = data || {};
            return fetch(url, {
                method: "POST",
                mode: "cors",
                cache: "no-cache",
                credentials: "same-origin",
                headers: {
                    "Content-Type": "application/json"
                },
                redirect: "follow",
                referrer: "no-referrer",
                body: JSON.stringify(data)
            })
                .then(function (response) { return response.json(); });
        }
        return __generator(this, function (_a) {
            postData("http://example.com/answer", { answer: 42 })
                .then(function (data) { return console.log(JSON.stringify(data)); })
                .catch(function (error) { return console.error(error); });
            return [2];
        });
    });
}
function uploadJSON() {
    return __awaiter(this, void 0, void 0, function () {
        var url, data, res, responseData, responseString, err_1;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    url = 'https://example.com/profile';
                    data = { username: 'example' };
                    _a.label = 1;
                case 1:
                    _a.trys.push([1, 4, , 5]);
                    return [4, fetch(url, {
                            method: 'POST',
                            body: JSON.stringify(data),
                            headers: { 'Content-Type': 'application/json' }
                        })];
                case 2:
                    res = _a.sent();
                    return [4, res.json()];
                case 3:
                    responseData = _a.sent();
                    responseString = JSON.stringify(responseData);
                    return [3, 5];
                case 4:
                    err_1 = _a.sent();
                    console.error('Error:', err_1);
                    return [3, 5];
                case 5: return [2];
            }
        });
    });
}
function foo() {
    return __awaiter(this, void 0, void 0, function () {
        var formData, fileField, response, dod, str, err_2;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    formData = new FormData();
                    fileField = document.querySelector("input[type='file']");
                    formData.append('username', 'abc123');
                    formData.append('avatar', fileField.files[0]);
                    _a.label = 1;
                case 1:
                    _a.trys.push([1, 4, , 5]);
                    return [4, fetch('https://example.com/profile/avatar', { method: 'PUT', body: formData })];
                case 2:
                    response = _a.sent();
                    return [4, response.json()];
                case 3:
                    dod = _a.sent();
                    str = JSON.stringify(dod);
                    return [3, 5];
                case 4:
                    err_2 = _a.sent();
                    console.error('Error:', err_2);
                    return [3, 5];
                case 5: return [2];
            }
        });
    });
}
function disallowingRedirects() {
    return __awaiter(this, void 0, void 0, function () {
        var resp, imageBlob, imgObjectURL, img, p;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: return [4, fetch("awesome-picture.jpg", { redirect: "error" })];
                case 1:
                    resp = _a.sent();
                    return [4, resp.blob()];
                case 2:
                    imageBlob = _a.sent();
                    imgObjectURL = URL.createObjectURL(imageBlob);
                    img = document.getElementById("img-element-id");
                    img.src = imgObjectURL;
                    p = document.body.firstChild;
                    document.body.insertBefore(p, img);
                    return [2];
            }
        });
    });
}
function bodyExample() {
    return __awaiter(this, void 0, void 0, function () {
        var resp, reader_1, rs, r, blob, url, img, err_3;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    _a.trys.push([0, 3, , 4]);
                    return [4, fetch('./tortoise.png')];
                case 1:
                    resp = _a.sent();
                    reader_1 = resp.body.getReader();
                    rs = new ReadableStream({
                        start: function (controller) {
                            return __awaiter(this, void 0, void 0, function () {
                                var result;
                                return __generator(this, function (_a) {
                                    switch (_a.label) {
                                        case 0:
                                            if (!true) return [3, 2];
                                            return [4, reader_1.read()];
                                        case 1:
                                            result = _a.sent();
                                            if (result.done) {
                                                return [3, 2];
                                            }
                                            controller.enqueue(result.value);
                                            return [3, 0];
                                        case 2:
                                            controller.close();
                                            reader_1.releaseLock();
                                            return [2];
                                    }
                                });
                            });
                        }
                    });
                    r = new Response(rs);
                    return [4, r.blob()];
                case 2:
                    blob = _a.sent();
                    url = URL.createObjectURL(blob);
                    img = document.getElementById("target");
                    img.src = url;
                    return [3, 4];
                case 3:
                    err_3 = _a.sent();
                    console.error(err_3);
                    return [3, 4];
                case 4: return [2];
            }
        });
    });
}
var Uint8ArrayToStringsTransformer = (function () {
    function Uint8ArrayToStringsTransformer() {
        this.decoder = new TextDecoder();
        this.lastString = '';
    }
    Uint8ArrayToStringsTransformer.prototype.transform = function (chunk, controller) {
        console.log('Received chunk %o with %d bytes.', chunk, chunk.byteLength);
        var string = "".concat(this.lastString).concat(this.decoder.decode(chunk));
        var lines = string.split(/\r\n|[\r\n]/g);
        this.lastString = lines.pop() || '';
        for (var _i = 0, lines_1 = lines; _i < lines_1.length; _i++) {
            var line = lines_1[_i];
            controller.enqueue(line);
        }
    };
    Uint8ArrayToStringsTransformer.prototype.flush = function (controller) {
        if (this.lastString) {
            controller.enqueue(this.lastString);
        }
    };
    return Uint8ArrayToStringsTransformer;
}());
function stringTransformExample() {
    return __awaiter(this, void 0, void 0, function () {
        var ts, response, rs, lineStream, reader, _a, done, value, p, err_4, error;
        return __generator(this, function (_b) {
            switch (_b.label) {
                case 0:
                    _b.trys.push([0, 5, , 6]);
                    ts = new TransformStream(new Uint8ArrayToStringsTransformer());
                    return [4, fetch('goethe-faust-1.txt')];
                case 1:
                    response = _b.sent();
                    rs = response.body;
                    lineStream = rs.pipeThrough(ts);
                    reader = lineStream.getReader();
                    _b.label = 2;
                case 2:
                    if (!true) return [3, 4];
                    return [4, reader.read()];
                case 3:
                    _a = _b.sent(), done = _a.done, value = _a.value;
                    if (done) {
                        return [3, 4];
                    }
                    p = document.createElement('p');
                    p.textContent = value;
                    document.getElementById('section').appendChild(p);
                    return [3, 2];
                case 4: return [3, 6];
                case 5:
                    err_4 = _b.sent();
                    if (typeof TransformStream === 'undefined') {
                        error = document.createElement('p');
                        error.textContent = 'TransformStream is not available in your browser. Activate it in Chrome with chrome://flags/#enable-experimental-web-platform-features';
                        error.style.color = 'red';
                        document.getElementById('section').appendChild(error);
                    }
                    return [3, 6];
                case 6: return [2];
            }
        });
    });
}
