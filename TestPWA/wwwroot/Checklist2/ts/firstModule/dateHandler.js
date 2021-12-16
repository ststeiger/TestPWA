"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.MyDate = exports.Timespan = exports.testDateFormat = exports.formatDate = exports.isLeapYear = void 0;
function to_unix_timestamp(input) {
    input = input || (new Date());
    return Math.floor(input.getTime() / 1000.0);
}
function from_unix_timestamp(unix_timestamp) {
    if (unix_timestamp == null)
        unix_timestamp = (new Date()).getTime();
    else
        unix_timestamp = parseInt(unix_timestamp.toString(), 10) * 1000;
    return new Date(unix_timestamp);
}
function from_ecma_timestamp(ecma_timestamp) {
    if (ecma_timestamp == null)
        ecma_timestamp = (new Date()).getTime();
    return new Date(parseInt(ecma_timestamp.toString(), 10));
}
function to_ecma_timestamp(input) {
    input = input || (new Date());
    return input.getTime();
}
function to_us_display_date(input) {
    input = input || (new Date());
    return input.toISOString().split('T')[0].split('-').join('/');
}
function to_gmt_time(input) {
    input = input || (new Date());
    return input.toISOString().split('T')[1].split('Z')[0];
}
function isLeapYear(year) {
    if (year % 400 == 0)
        return true;
    if (year % 100 == 0)
        return false;
    if (year % 4 == 0)
        return true;
    return false;
}
exports.isLeapYear = isLeapYear;
function dateAdd(date, unit, interval) {
    if (!(date instanceof Date))
        return undefined;
    var ret = new Date(date);
    function checkRollover() {
        if (ret.getDate() != date.getDate())
            ret.setDate(0);
    }
    unit = String(unit).toLowerCase();
    var fakeUnit = { "century": 100, "millenium": 1000, "decade": 10 };
    for (var key in fakeUnit) {
        if (!fakeUnit.hasOwnProperty(key))
            continue;
        if (unit === key) {
            unit = "year";
            interval *= fakeUnit[key];
        }
    }
    switch (unit) {
        case 'year':
            ret.setFullYear(ret.getFullYear() + interval);
            checkRollover();
            break;
        case 'quarter':
            ret.setMonth(ret.getMonth() + 3 * interval);
            checkRollover();
            break;
        case 'month':
            ret.setMonth(ret.getMonth() + interval);
            checkRollover();
            break;
        case 'week':
            ret.setDate(ret.getDate() + 7 * interval);
            break;
        case 'day':
            ret.setDate(ret.getDate() + interval);
            break;
        case 'hour':
            ret.setTime(ret.getTime() + interval * 3600000);
            break;
        case 'minute':
            ret.setTime(ret.getTime() + interval * 60000);
            break;
        case 'second':
            ret.setTime(ret.getTime() + interval * 1000);
            break;
        default:
            ret = undefined;
            break;
    }
    return ret;
}
function isArray(obj) {
    return !!obj && obj.constructor === Array;
}
function isObject(obj) {
    return (typeof obj === 'object' && obj !== null);
}
function isPrimitive(val) {
    return !(typeof val == "object" || typeof val == "function");
}
function mergeArrays(args) {
    var d = [];
    for (var i = 0; i < args.length; ++i) {
        if (isArray(args[i])) {
            for (var j = 0; j < args[i].length; ++j) {
                d.push(args[i][j]);
            }
        }
        else
            d.push(args[i]);
    }
    return d;
}
function formatString() {
    var args = [];
    for (var _i = 0; _i < arguments.length; _i++) {
        args[_i] = arguments[_i];
    }
    var format = args.shift();
    if (format == null)
        return "";
    format = format.toString();
    if (isObject(args[0]) && !isArray(args[0])) {
        args = args[0];
        for (var key in args) {
            if (args.hasOwnProperty(key)) {
                var val = args[key];
                if (val != null && isPrimitive(val))
                    format = format.replace(new RegExp("\\{" + key + "\\}", "gi"), val.toString());
            }
        }
        return format;
    }
    else {
        var d_1 = mergeArrays(args);
        return format.replace(/{(\d+)}/g, function (match, number) {
            var val = d_1[number];
            if (val != null && isPrimitive(val))
                return val.toString();
            return match;
        });
    }
    throw new Error("Bad arguments in formatString");
}
function simpleFormat() {
    var args = [];
    for (var _i = 0; _i < arguments.length; _i++) {
        args[_i] = arguments[_i];
    }
    var format = args.shift();
    if (format == null)
        return "";
    format = format.toString();
    var d = mergeArrays(args);
    return format.replace(/{(\d+)}/g, function (match, number) {
        var val = d[number];
        if (val != null && isPrimitive(val))
            return val.toString();
        return match;
    });
}
function formatObject(format, args) {
    if (format == null)
        return "";
    format = format.toString();
    if (isObject(args) && !isArray(args)) {
        for (var key in args) {
            if (args.hasOwnProperty(key)) {
                var val = args[key];
                if (val != null && isPrimitive(val))
                    format = format.replace(new RegExp("\\{" + key + "\\}", "gi"), val.toString());
            }
        }
        return format;
    }
    throw new Error("Bad arguments in formatObject");
}
function padLeft(str, targetLength, padString) {
    targetLength = targetLength >> 0;
    padString = String(typeof padString !== 'undefined' ? padString : ' ');
    if (str.length > targetLength) {
        return String(str);
    }
    else {
        targetLength = targetLength - str.length;
        if (targetLength > padString.length) {
            padString += padString.repeat(targetLength / padString.length);
        }
        return padString.slice(0, targetLength) + String(str);
    }
}
function padRight(str, targetLength, padString) {
    targetLength = targetLength >> 0;
    padString = String(typeof padString !== 'undefined' ? padString : ' ');
    if (str.length > targetLength) {
        return String(str);
    }
    else {
        targetLength = targetLength - str.length;
        if (targetLength > padString.length) {
            padString += padString.repeat(targetLength / padString.length);
        }
        return String(str) + padString.slice(0, targetLength);
    }
}
function trimChar(str, charToRemove) {
    while (str.charAt(0) == charToRemove) {
        str = str.substr(1);
    }
    while (str.charAt(str.length - 1) == charToRemove) {
        str = str.substr(0, str.length - 1);
    }
    return str;
}
function trimLeft(str, charToRemove) {
    while (str.charAt(0) == charToRemove) {
        str = str.substr(1);
    }
    return str;
}
function trimRight(str, charToRemove) {
    while (str.charAt(str.length - 1) == charToRemove) {
        str = str.substr(0, str.length - 1);
    }
    return str;
}
function parseFormat(format, dat) {
    var sb = [];
    var specialBuffer = [];
    var specials = ["y", "M", "d", "H", "h", "m", "s", "f", "t", 'z', "K"];
    var lastChar = null;
    for (var i = 0; i < format.length; ++i) {
        var c_1 = format.charAt(i);
        var isSpecial = specials.indexOf(c_1) > -1;
        if (isSpecial) {
            if (c_1 == lastChar)
                specialBuffer.push(c_1);
            else {
                if (specialBuffer.length > 0) {
                    var v = dat[specialBuffer.join("")];
                    sb.push(v);
                    specialBuffer = [];
                }
                specialBuffer.push(c_1);
            }
            lastChar = c_1;
        }
        else {
            if (specialBuffer.length > 0) {
                var v = dat[specialBuffer.join("")];
                sb.push(v);
                specialBuffer = [];
            }
            sb.push(c_1);
            lastChar = null;
        }
    }
    if (specialBuffer.length > 0) {
        var v = dat[specialBuffer.join("")];
        sb.push(v);
        specialBuffer = null;
    }
    else
        specialBuffer = null;
    return sb.join("");
}
function getDateData(d) {
    var weekday = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
    var abb = ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"];
    var labb = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
    var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    var short_months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    var short_months1 = ["Jan.", "Feb.", "Mar.", "Apr.", "May", "June", "July", "Aug.", "Sept.", "Oct.", "Nov.", "Dec."];
    var short_months_RU = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"];
    var mins = d.getTimezoneOffset();
    var sign = "-";
    if (mins < 0) {
        sign = "+";
        mins *= -1;
    }
    var min = mins % 60;
    var hours = (mins - min) / 60;
    function nf(nums) {
        return padLeft(trimRight(padLeft((d.getMilliseconds()).toFixed(0), nums, "0"), "0"), nums, "0");
    }
    return {
        d: d.getDate().toFixed(0),
        dd: padLeft(d.getDate().toFixed(0), 2, "0"),
        ddd: labb[d.getDay()],
        dddd: weekday[d.getDay()],
        M: (d.getMonth() + 1).toFixed(0),
        MM: padLeft((d.getMonth() + 1).toFixed(0), 2, "0"),
        MMM: short_months[d.getMonth()],
        MMMM: months[d.getMonth()],
        yy: d.getFullYear() % 100,
        yyyy: d.getFullYear(),
        H: (d.getHours()).toFixed(0),
        HH: padLeft((d.getHours()).toFixed(0), 2, "0"),
        h: (d.getHours() % 12).toFixed(0),
        hh: padLeft((d.getHours() % 12).toFixed(0), 2, "0"),
        m: (d.getMinutes()).toFixed(0),
        mm: padLeft((d.getMinutes()).toFixed(0), 2, "0"),
        s: (d.getSeconds()).toFixed(0),
        ss: padLeft((d.getSeconds()).toFixed(0), 2, "0"),
        f: nf(1),
        ff: nf(2),
        fff: nf(3),
        ffff: nf(4),
        fffff: nf(5),
        ffffff: nf(6),
        t: (d.getHours() > 11 ? "P" : "A"),
        tt: (d.getHours() > 11 ? "PM" : "AM"),
        z: sign + hours.toFixed(0).toString(),
        zz: sign + padLeft(hours.toFixed(0).toString(), 2, "0"),
        zzz: sign + padLeft(hours.toFixed(0).toString(), 2, "0") + padLeft(min.toFixed(0).toString(), 2, "0"),
        K: sign + padLeft(hours.toFixed(0).toString(), 2, "0") + padLeft(min.toFixed(0).toString(), 2, "0"),
    };
}
function locations(needle, haystack) {
    var ls = [], extracts = [], pairs = [], i = -1, last = 0;
    while ((i = haystack.indexOf(needle, i + 1)) >= 0) {
        pairs.push([last, i]);
        extracts.push(haystack.substring(last, i));
        ls.push(i);
        last = i + 1;
    }
    pairs.push([last, haystack.length]);
    extracts.push(haystack.substring(last, haystack.length));
    return { "indices": ls, "extracts": extracts, "pairs": pairs };
}
function formatDate(d, format) {
    format = format.replace(new RegExp("''", 'g'), '\b');
    var dat = getDateData(d);
    var pos = locations("'", format).extracts;
    if (pos.length === 0)
        pos.push(format);
    if (pos.length % 2 != 1)
        throw new Error("Invalid number of ticks (')");
    var sb = [];
    for (var i = 0; i < pos.length; ++i) {
        if (i % 2)
            sb.push(pos[i]);
        else
            sb.push(parseFormat(pos[i], dat));
    }
    format = sb.join("");
    format = format.replace(new RegExp("\b", 'g'), "'");
    console.log(format);
    return format;
}
exports.formatDate = formatDate;
function testDateFormat() {
    var d = new Date();
    var format = "dddd', 'dd'.'MM'.'yyyy' 'HH':'mm':'ss'.'fff";
    formatDate(d, format);
}
exports.testDateFormat = testDateFormat;
var Timespan = (function () {
    function Timespan(ms) {
        this.m_timeSpan = ms;
    }
    Object.defineProperty(Timespan.prototype, "sign", {
        get: function () {
            if (this.m_timeSpan == 0)
                return 0;
            if (this.m_timeSpan < 0)
                return -1;
            return 1;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(Timespan.prototype, "totalMilliseconds", {
        get: function () {
            return this.m_timeSpan;
        },
        set: function (value) {
            this.m_timeSpan = value;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(Timespan.prototype, "milliseconds", {
        get: function () {
            return this.totalMilliseconds % 1000;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(Timespan.prototype, "totalSeconds", {
        get: function () {
            return (this.totalMilliseconds - this.milliseconds) / 1000;
        },
        set: function (value) {
            this.m_timeSpan = value * 1000;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(Timespan.prototype, "seconds", {
        get: function () {
            return (this.totalSeconds % 60);
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(Timespan.prototype, "totalMinutes", {
        get: function () {
            return ((this.totalSeconds - this.seconds) / 60);
        },
        set: function (value) {
            this.m_timeSpan = value * 60 * 1000;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(Timespan.prototype, "minutes", {
        get: function () {
            return (this.totalMinutes % 60);
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(Timespan.prototype, "totalHours", {
        get: function () {
            return ((this.totalMinutes - this.minutes) / 60);
        },
        set: function (value) {
            this.m_timeSpan = value * 60 * 60 * 1000;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(Timespan.prototype, "hours", {
        get: function () {
            return (this.totalHours % 24);
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(Timespan.prototype, "totalDays", {
        get: function () {
            return ((this.totalHours - this.hours) / 24);
        },
        set: function (value) {
            this.m_timeSpan = value * 24 * 60 * 60 * 1000;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(Timespan.prototype, "days", {
        get: function () {
            return (this.totalDays % 365);
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(Timespan.prototype, "years", {
        get: function () {
            return ((this.totalDays - this.days) / 365);
        },
        enumerable: false,
        configurable: true
    });
    Timespan.prototype.asSeconds = function () {
        return this.m_timeSpan / 1000;
    };
    Timespan.prototype.asMinutes = function () {
        return this.m_timeSpan / 60000;
    };
    Timespan.prototype.asHours = function () {
        return this.m_timeSpan / 3600000;
    };
    Timespan.prototype.asDays = function () {
        return this.m_timeSpan / 86400000;
    };
    Timespan.prototype.asWeeks = function () {
        return this.m_timeSpan / 604800000;
    };
    Timespan.prototype.asMonthsOf30days = function () {
        return this.m_timeSpan / 2592000000;
    };
    Timespan.prototype.asMonths = function () {
        return this.m_timeSpan * 12 / 31536000000;
    };
    Timespan.prototype.asQuarters = function () {
        return this.m_timeSpan * 4 / 31536000000;
    };
    Timespan.prototype.asSemesters = function () {
        return this.m_timeSpan * 2 / 31536000000;
    };
    Timespan.prototype.asYears = function () {
        return this.m_timeSpan / 31536000000;
    };
    Timespan.prototype.asDecades = function () {
        return this.m_timeSpan / 315576000000;
    };
    Timespan.prototype.asCenturies = function () {
        return this.m_timeSpan / 3155760000000;
    };
    Timespan.prototype.asMillenia = function () {
        return this.m_timeSpan / 31557600000000;
    };
    Timespan.prototype.asMyriads = function () {
        return this.m_timeSpan / 315576000000000;
    };
    Timespan.prototype.asLakhs = function () {
        return this.m_timeSpan / 3155760000000000;
    };
    Timespan.prototype.asAges = function () {
        return this.m_timeSpan / 31557600000000000;
    };
    Timespan.prototype.asEpochs = function () {
        return this.m_timeSpan / 315576000000000000;
    };
    Timespan.prototype.asPeriods = function () {
        return this.m_timeSpan / 3155760000000000000;
    };
    Timespan.prototype.asEon = function () {
        return this.m_timeSpan / 15778800000000000000;
    };
    Timespan.prototype.asAeon = function () {
        return this.m_timeSpan / 31557600000000000000;
    };
    Timespan.prototype.changeSign = function () {
        this.m_timeSpan *= -1;
    };
    Timespan.prototype.asAgo = function (language) {
        var timeScales = [
            { "what": "Aeon", "p": 2, "tp": "over {n} aeons ago", "s": 1, "ts": "over an aeon ago", },
            { "what": "Eon", "p": 2, "tp": "over {n} eons ago", "s": 1, "ts": "over an eon ago", },
            { "what": "Epochs", "p": 2, "tp": "over {n} epochs ago", "s": 1, "ts": "over an epoch ago", },
            { "what": "Ages", "p": 2, "tp": "over {n} ages ago", "s": 1, "ts": "over an age ago", },
            { "what": "Lakhs", "p": 2, "tp": "over {n} lakh years ago", "s": 1, "ts": "over a lakh year ago", },
            { "what": "Myriads", "p": 2, "tp": "over {n} myriad years ago", "s": 1, "ts": "over a myriad years ago", },
            { "what": "Millenia", "p": 2, "tp": "over {n} millenia ago", "s": 1, "ts": "over a millenium ago", },
            { "what": "Centuries", "p": 2, "tp": "over {n} centuries ago", "s": 1, "ts": "over a century ago", },
            { "what": "Decades", "p": 2, "tp": "over {n} decades ago", "s": 1, "ts": "over a decade ago", },
            { "what": "Years", "p": 2, "tp": "over {n} years ago", "s": 1, "ts": "over a year ago", },
            { "what": "Months", "p": 2, "tp": "over {n} months ago", "s": 1, "ts": "over a month ago", },
            { "what": "Weeks", "p": 2, "tp": "over {n} weeks ago", "s": 1, "ts": "over a week ago", },
            { "what": "Days", "p": 2, "tp": "over {n} days ago", "s": 1, "ts": "over a day ago", },
            { "what": "Hours", "p": 2, "tp": "over {n} hours ago", "s": 1, "ts": "over an hour ago", },
            { "what": "Minutes", "p": 2, "tp": "over {n} minutes ago", "s": 1, "ts": "over a minute ago", },
            { "what": "Seconds", "p": 10, "tp": "over {n} seconds ago", "s": 1, "ts": "just about now", },
            { "what": "Seconds", "p": 0, "tp": "just about now", "s": 1, "ts": "just about now", }
        ];
        var changed = this.m_timeSpan < 0;
        if (changed) {
            this.changeSign();
            timeScales = [
                { "what": "Aeon", "p": 2, "tp": "in {n} aeons", "s": 1, "ts": "in an aeon", },
                { "what": "Eon", "p": 2, "tp": "in {n} eons", "s": 1, "ts": "in an eon", },
                { "what": "Epochs", "p": 2, "tp": "in {n} epochs", "s": 1, "ts": "in an epoch", },
                { "what": "Ages", "p": 2, "tp": "in {n} ages", "s": 1, "ts": "in an age", },
                { "what": "Lakhs", "p": 2, "tp": "in {n} lakh years", "s": 1, "ts": "in a lakh year", },
                { "what": "Myriads", "p": 2, "tp": "in {n} myriad years", "s": 1, "ts": "in a myriad years", },
                { "what": "Millenia", "p": 2, "tp": "in {n} millenia", "s": 1, "ts": "in a millenium", },
                { "what": "Centuries", "p": 2, "tp": "in {n} centuries", "s": 1, "ts": "in a century", },
                { "what": "Decades", "p": 2, "tp": "in {n} decades", "s": 1, "ts": "in a decade", },
                { "what": "Years", "p": 2, "tp": "in {n} years", "s": 1, "ts": "in a year", },
                { "what": "Months", "p": 2, "tp": "in {n} months", "s": 1, "ts": "in a month", },
                { "what": "Weeks", "p": 2, "tp": "in {n} weeks", "s": 1, "ts": "in a week", },
                { "what": "Days", "p": 2, "tp": "in {n} days", "s": 1, "ts": "in a day", },
                { "what": "Hours", "p": 2, "tp": "in {n} hours", "s": 1, "ts": "in an hour", },
                { "what": "Minutes", "p": 2, "tp": "in {n} minutes", "s": 1, "ts": "in a minute", },
                { "what": "Seconds", "p": 10, "tp": "in {n} seconds", "s": 1, "ts": "soon", },
                { "what": "Seconds", "p": 0, "tp": "soon", "s": 1, "ts": "soon", }
            ];
        }
        for (var i = 0; i < timeScales.length; ++i) {
            var rec = timeScales[i];
            var a_1 = this["as" + rec.what]();
            var n = Math.floor(a_1).toFixed(0);
            if (a_1 >= rec.p) {
                return formatObject(rec.tp, { "n": n });
            }
            else if (a_1 >= 1)
                return rec.ts;
        }
        if (changed)
            this.changeSign();
        return "in the future?";
    };
    Timespan.fromDate = function (d1, d2) {
        d2 = d2 || new Date();
        var ms = d2.valueOf() - d1.valueOf();
        return new Timespan(ms);
    };
    return Timespan;
}());
exports.Timespan = Timespan;
var DateTimeKind;
(function (DateTimeKind) {
    DateTimeKind[DateTimeKind["LOCAL"] = 0] = "LOCAL";
    DateTimeKind[DateTimeKind["UTC"] = 1] = "UTC";
})(DateTimeKind || (DateTimeKind = {}));
var MyDate = (function () {
    function MyDate(kind, ecma_epoch) {
        this.m_dateTimeKind = kind;
        if (ecma_epoch != null)
            this.m_date = new Date(ecma_epoch);
        else
            this.m_date = new Date();
    }
    Object.defineProperty(MyDate.prototype, "day", {
        get: function () {
            if (this.m_dateTimeKind === DateTimeKind.UTC)
                return this.m_date.getUTCDay();
            return this.m_date.getDay();
        },
        set: function (value) {
            if (this.m_dateTimeKind === DateTimeKind.UTC)
                this.m_date.setUTCDate(value);
            this.m_date.setDate(value);
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(MyDate.prototype, "month", {
        get: function () {
            if (this.m_dateTimeKind === DateTimeKind.UTC)
                return this.m_date.getUTCMonth() + 1;
            return this.m_date.getMonth() + 1;
        },
        set: function (value) {
            if (this.m_dateTimeKind === DateTimeKind.UTC)
                this.m_date.setUTCMonth(value - 1);
            this.m_date.setMonth(value - 1);
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(MyDate.prototype, "year", {
        get: function () {
            if (this.m_dateTimeKind === DateTimeKind.UTC)
                return this.m_date.getUTCFullYear();
            return this.m_date.getFullYear();
        },
        set: function (value) {
            if (this.m_dateTimeKind === DateTimeKind.UTC)
                this.m_date.setUTCFullYear(value);
            this.m_date.setFullYear(value);
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(MyDate.prototype, "hour", {
        get: function () {
            if (this.m_dateTimeKind === DateTimeKind.UTC)
                return this.m_date.getUTCHours();
            return this.m_date.getHours();
        },
        set: function (value) {
            if (this.m_dateTimeKind === DateTimeKind.UTC)
                this.m_date.setUTCHours(value);
            this.m_date.setHours(value);
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(MyDate.prototype, "minute", {
        get: function () {
            if (this.m_dateTimeKind === DateTimeKind.UTC)
                return this.m_date.getUTCMinutes();
            return this.m_date.getMinutes();
        },
        set: function (value) {
            if (this.m_dateTimeKind === DateTimeKind.UTC)
                this.m_date.setUTCMinutes(value);
            this.m_date.setMinutes(value);
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(MyDate.prototype, "second", {
        get: function () {
            if (this.m_dateTimeKind === DateTimeKind.UTC)
                return this.m_date.getUTCSeconds();
            return this.m_date.getSeconds();
        },
        set: function (value) {
            if (this.m_dateTimeKind === DateTimeKind.UTC)
                this.m_date.setUTCSeconds(value);
            this.m_date.setSeconds(value);
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(MyDate.prototype, "millisecond", {
        get: function () {
            if (this.m_dateTimeKind === DateTimeKind.UTC)
                return this.m_date.getUTCMilliseconds();
            return this.m_date.getMilliseconds();
        },
        set: function (value) {
            if (this.m_dateTimeKind === DateTimeKind.UTC)
                this.m_date.setUTCMilliseconds(value);
            this.m_date.setMilliseconds(value);
        },
        enumerable: false,
        configurable: true
    });
    MyDate.prototype.addYears = function (amount) {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            this.m_date.setUTCFullYear(this.m_date.getUTCFullYear() + amount);
        else
            this.m_date.setFullYear(this.m_date.getFullYear() + amount);
    };
    MyDate.prototype.addSemesters = function (amount) {
        this.addMonths(6 * amount);
    };
    MyDate.prototype.addQuarters = function (amount) {
        this.addMonths(3 * amount);
    };
    MyDate.prototype.addMonths = function (amount) {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            this.m_date.setUTCMonth(this.m_date.getUTCMonth() + amount);
        else
            this.m_date.setMonth(this.m_date.getMonth() + amount);
    };
    MyDate.prototype.addWeeks = function (amount) {
        this.addDays(7 * amount);
    };
    MyDate.prototype.addDays = function (amount) {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            this.m_date.setUTCDate(this.m_date.getUTCDate() + amount);
        else
            this.m_date.setDate(this.m_date.getDate() + amount);
    };
    MyDate.prototype.addHours = function (amount) {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            this.m_date.setUTCHours(this.m_date.getUTCHours() + amount);
        else
            this.m_date.setHours(this.m_date.getHours() + amount);
    };
    MyDate.prototype.addMinutes = function (amount) {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            this.m_date.setUTCMinutes(this.m_date.getUTCMinutes() + amount);
        else
            this.m_date.setMinutes(this.m_date.getMinutes() + amount);
    };
    MyDate.prototype.addSeconds = function (amount) {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            this.m_date.setUTCSeconds(this.m_date.getUTCSeconds() + amount);
        else
            this.m_date.setSeconds(this.m_date.getSeconds() + amount);
    };
    MyDate.prototype.addMilliseconds = function (amount) {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            this.m_date.setUTCMilliseconds(this.m_date.getUTCMilliseconds() + amount);
        else
            this.m_date.setMilliseconds(this.m_date.getMilliseconds() + amount);
    };
    Object.defineProperty(MyDate.prototype, "ecma_timestamp", {
        get: function () {
            return this.m_date.getTime();
        },
        set: function (value) {
            this.m_date = new Date(parseInt(value.toString(), 10));
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(MyDate.prototype, "unix_timestamp", {
        get: function () {
            return Math.floor(this.m_date.getTime() / 1000.0);
        },
        set: function (value) {
            this.m_date = new Date(parseInt(value.toString(), 10) * 1000);
        },
        enumerable: false,
        configurable: true
    });
    MyDate.prototype.setStartOfDay = function () {
        this.hour = 0;
        this.minute = 0;
        this.second = 0;
        this.millisecond = 0;
        return this;
    };
    MyDate.prototype.setEndOfDay = function () {
        this.hour = 23;
        this.minute = 59;
        this.second = 59;
        this.millisecond = 0;
        return this;
    };
    MyDate.now = function (kind) {
        return new MyDate(kind);
    };
    MyDate.today = function (kind) {
        return new MyDate(kind, (new Date()).getTime()).setStartOfDay();
    };
    return MyDate;
}());
exports.MyDate = MyDate;
