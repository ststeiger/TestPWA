var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (Object.prototype.hasOwnProperty.call(b, p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        if (typeof b !== "function" && b !== null)
            throw new TypeError("Class extends value " + String(b) + " is not a constructor or null");
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
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
var BaseError = (function () {
    function BaseError() {
        Error.apply(this, arguments);
    }
    return BaseError;
}());
BaseError.prototype = new Error();
var HttpRequestError = (function (_super) {
    __extends(HttpRequestError, _super);
    function HttpRequestError(status, message) {
        var _this = _super.call(this) || this;
        _this.status = status;
        _this.message = message;
        return _this;
    }
    return HttpRequestError;
}(BaseError));
var ApplicationOfflineError = (function (_super) {
    __extends(ApplicationOfflineError, _super);
    function ApplicationOfflineError(m) {
        var _this = _super.call(this, m) || this;
        Object.setPrototypeOf(_this, ApplicationOfflineError.prototype);
        return _this;
    }
    ApplicationOfflineError.prototype.sayHello = function () {
        return "hello " + this.message;
    };
    return ApplicationOfflineError;
}(Error));
var RenderType_t;
(function (RenderType_t) {
    RenderType_t[RenderType_t["Default"] = 0] = "Default";
    RenderType_t[RenderType_t["Indented"] = 1] = "Indented";
    RenderType_t[RenderType_t["DataTable"] = 2] = "DataTable";
    RenderType_t[RenderType_t["Array"] = 4] = "Array";
    RenderType_t[RenderType_t["Data_Only"] = 8] = "Data_Only";
    RenderType_t[RenderType_t["Columns_Associative"] = 16] = "Columns_Associative";
    RenderType_t[RenderType_t["Columns_ObjectArray"] = 32] = "Columns_ObjectArray";
    RenderType_t[RenderType_t["WithDetail"] = 64] = "WithDetail";
    RenderType_t[RenderType_t["ShortName"] = 128] = "ShortName";
    RenderType_t[RenderType_t["LongName"] = 256] = "LongName";
    RenderType_t[RenderType_t["AssemblyQualifiedName"] = 512] = "AssemblyQualifiedName";
    RenderType_t[RenderType_t["All"] = 1023] = "All";
})(RenderType_t || (RenderType_t = {}));
function getData(url, data) {
    return __awaiter(this, void 0, void 0, function () {
        var prettyDataTable, prettyBadDataTable, badDataTable, req, json, obj, ex1, ex2, ex3, myHeaders, options, ex_1, ex_2;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    if (url == null) {
                        throw Error("URL is NULL...");
                    }
                    if (!navigator.onLine) {
                        throw new HttpRequestError(500, 'Client offline');
                    }
                    prettyDataTable = RenderType_t.Indented | RenderType_t.DataTable;
                    prettyBadDataTable = RenderType_t.Columns_Associative | RenderType_t.Indented;
                    badDataTable = RenderType_t.Columns_Associative;
                    if (url.indexOf("?") != -1)
                        url += "&format=" + prettyBadDataTable;
                    else
                        url += "?format=" + prettyBadDataTable;
                    if (url.indexOf("no_cache") == -1)
                        url += "&no_cache=" + (new Date()).getTime();
                    req = null;
                    json = null;
                    obj = null;
                    ex1 = null;
                    ex2 = null;
                    ex3 = null;
                    myHeaders = new Headers();
                    myHeaders.append("Accept", "application/json");
                    myHeaders.append("Content-Type", "application/json");
                    myHeaders.append("pragma", "no-cache");
                    myHeaders.append("cache-control", "no-cache");
                    options = {
                        "method": "POST",
                        "headers": myHeaders,
                        credentials: 'same-origin',
                        "body": null
                    };
                    if (data != null) {
                        if (typeof data === 'string' || data instanceof String)
                            options["body"] = data;
                        else
                            options["body"] = JSON.stringify({ "id": 123 });
                    }
                    _a.label = 1;
                case 1:
                    _a.trys.push([1, 3, , 4]);
                    return [4, fetch(url, options)];
                case 2:
                    req = _a.sent();
                    return [3, 4];
                case 3:
                    ex_1 = _a.sent();
                    console.log(ex_1);
                    ex1 = ex_1;
                    return [3, 4];
                case 4:
                    _a.trys.push([4, 7, , 8]);
                    if (!(req != null)) return [3, 6];
                    return [4, req.text()];
                case 5:
                    json = _a.sent();
                    _a.label = 6;
                case 6: return [3, 8];
                case 7:
                    ex_2 = _a.sent();
                    console.log(ex_2);
                    ex2 = ex_2;
                    return [3, 8];
                case 8:
                    try {
                        obj = JSON.parse(json);
                    }
                    catch (ex) {
                        ex3 = ex;
                        console.log(ex);
                    }
                    if (obj == null) {
                        throw new HttpRequestError(500, 'Server Error');
                    }
                    return [2, obj];
            }
        });
    });
}
