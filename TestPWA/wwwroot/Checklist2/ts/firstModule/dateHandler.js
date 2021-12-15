"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.MyDate = void 0;
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
function dateAdd(date, interval, units) {
    if (!(date instanceof Date))
        return undefined;
    var ret = new Date(date);
    function checkRollover() {
        if (ret.getDate() != date.getDate())
            ret.setDate(0);
    }
    switch (String(interval).toLowerCase()) {
        case 'year':
            ret.setFullYear(ret.getFullYear() + units);
            checkRollover();
            break;
        case 'quarter':
            ret.setMonth(ret.getMonth() + 3 * units);
            checkRollover();
            break;
        case 'month':
            ret.setMonth(ret.getMonth() + units);
            checkRollover();
            break;
        case 'week':
            ret.setDate(ret.getDate() + 7 * units);
            break;
        case 'day':
            ret.setDate(ret.getDate() + units);
            break;
        case 'hour':
            ret.setTime(ret.getTime() + units * 3600000);
            break;
        case 'minute':
            ret.setTime(ret.getTime() + units * 60000);
            break;
        case 'second':
            ret.setTime(ret.getTime() + units * 1000);
            break;
        default:
            ret = undefined;
            break;
    }
    return ret;
}
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
