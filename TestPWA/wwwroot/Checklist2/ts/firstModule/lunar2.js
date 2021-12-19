"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.ChineseZodiac = void 0;
var DateTimeKind;
(function (DateTimeKind) {
    DateTimeKind[DateTimeKind["Unspecified"] = 0] = "Unspecified";
    DateTimeKind[DateTimeKind["Utc"] = 1] = "Utc";
    DateTimeKind[DateTimeKind["Local"] = 2] = "Local";
})(DateTimeKind || (DateTimeKind = {}));
var GregorianCalendar = (function () {
    function GregorianCalendar() {
    }
    GregorianCalendar.prototype.GetYear = function (time) {
        var ticks = time.JavaScriptTicks;
        var dt = new Date(ticks);
        return dt.getUTCFullYear();
    };
    GregorianCalendar.prototype.GetMonth = function (time) {
        var ticks = time.JavaScriptTicks;
        var dt = new Date(ticks);
        return (dt.getUTCMonth() + 1);
    };
    GregorianCalendar.prototype.GetDayOfMonth = function (time) {
        var ticks = time.JavaScriptTicks;
        var dt = new Date(ticks);
        return dt.getUTCDate();
    };
    return GregorianCalendar;
}());
var DotNetDateTime = (function () {
    function DotNetDateTime(ticks, dt) {
        this.m_ticks = 0;
        this.m_ticks = ticks;
    }
    DotNetDateTime.fromJsDate = function (dt) {
        var jsTicks = dt.getTime();
        var dotNetJsbaseTicks = 621355968000000000;
        var tenK = 10000;
        var dotTicks = dotNetJsbaseTicks + jsTicks * tenK;
        return new DotNetDateTime(dotTicks, DateTimeKind.Unspecified);
    };
    Object.defineProperty(DotNetDateTime.prototype, "Ticks", {
        get: function () {
            return this.m_ticks;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(DotNetDateTime.prototype, "JavaScriptTicks", {
        get: function () {
            var dotNetJsbaseTicks = 621355968000000000;
            var dotNetTicksSince1970 = this.m_ticks - dotNetJsbaseTicks;
            var jsTicks = parseInt((dotNetTicksSince1970 / 10000).toString(), 10);
            return jsTicks;
        },
        enumerable: false,
        configurable: true
    });
    return DotNetDateTime;
}());
var MinLunisolarYear = 1901;
var MaxLunisolarYear = 2100;
var DaysPerYear = 365;
var DaysPer4Years = DaysPerYear * 4 + 1;
var DaysPer100Years = DaysPer4Years * 25 - 1;
var DaysPer400Years = DaysPer100Years * 4 + 1;
var DaysTo10000 = DaysPer400Years * 25 - 366;
var TicksPerMillisecond = 10000;
var TicksPerSecond = TicksPerMillisecond * 1000;
var TicksPerMinute = TicksPerSecond * 60;
var TicksPerHour = TicksPerMinute * 60;
var TicksPerDay = TicksPerHour * 24;
var MinTicks = 0;
var MaxTicks = DaysTo10000 * TicksPerDay - 1;
var MinValue = new DotNetDateTime(MinTicks, DateTimeKind.Unspecified);
var MaxValue = new DotNetDateTime(MaxTicks, DateTimeKind.Unspecified);
var Jan1Month = 1;
var Jan1Date = 2;
var nDaysPerMonth = 3;
var s_daysToMonth365 = [0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334];
var s_daysToMonth366 = [0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335];
var s_yinfo = [
    [0, 2, 19, 19168],
    [0, 2, 8, 42352],
    [5, 1, 29, 21096],
    [0, 2, 16, 53856],
    [0, 2, 4, 55632],
    [4, 1, 25, 27304],
    [0, 2, 13, 22176],
    [0, 2, 2, 39632],
    [2, 1, 22, 19176],
    [0, 2, 10, 19168],
    [6, 1, 30, 42200],
    [0, 2, 18, 42192],
    [0, 2, 6, 53840],
    [5, 1, 26, 54568],
    [0, 2, 14, 46400],
    [0, 2, 3, 54944],
    [2, 1, 23, 38608],
    [0, 2, 11, 38320],
    [7, 2, 1, 18872],
    [0, 2, 20, 18800],
    [0, 2, 8, 42160],
    [5, 1, 28, 45656],
    [0, 2, 16, 27216],
    [0, 2, 5, 27968],
    [4, 1, 24, 44456],
    [0, 2, 13, 11104],
    [0, 2, 2, 38256],
    [2, 1, 23, 18808],
    [0, 2, 10, 18800],
    [6, 1, 30, 25776],
    [0, 2, 17, 54432],
    [0, 2, 6, 59984],
    [5, 1, 26, 27976],
    [0, 2, 14, 23248],
    [0, 2, 4, 11104],
    [3, 1, 24, 37744],
    [0, 2, 11, 37600],
    [7, 1, 31, 51560],
    [0, 2, 19, 51536],
    [0, 2, 8, 54432],
    [6, 1, 27, 55888],
    [0, 2, 15, 46416],
    [0, 2, 5, 22176],
    [4, 1, 25, 43736],
    [0, 2, 13, 9680],
    [0, 2, 2, 37584],
    [2, 1, 22, 51544],
    [0, 2, 10, 43344],
    [7, 1, 29, 46248],
    [0, 2, 17, 27808],
    [0, 2, 6, 46416],
    [5, 1, 27, 21928],
    [0, 2, 14, 19872],
    [0, 2, 3, 42416],
    [3, 1, 24, 21176],
    [0, 2, 12, 21168],
    [8, 1, 31, 43344],
    [0, 2, 18, 59728],
    [0, 2, 8, 27296],
    [6, 1, 28, 44368],
    [0, 2, 15, 43856],
    [0, 2, 5, 19296],
    [4, 1, 25, 42352],
    [0, 2, 13, 42352],
    [0, 2, 2, 21088],
    [3, 1, 21, 59696],
    [0, 2, 9, 55632],
    [7, 1, 30, 23208],
    [0, 2, 17, 22176],
    [0, 2, 6, 38608],
    [5, 1, 27, 19176],
    [0, 2, 15, 19152],
    [0, 2, 3, 42192],
    [4, 1, 23, 53864],
    [0, 2, 11, 53840],
    [8, 1, 31, 54568],
    [0, 2, 18, 46400],
    [0, 2, 7, 46752],
    [6, 1, 28, 38608],
    [0, 2, 16, 38320],
    [0, 2, 5, 18864],
    [4, 1, 25, 42168],
    [0, 2, 13, 42160],
    [10, 2, 2, 45656],
    [0, 2, 20, 27216],
    [0, 2, 9, 27968],
    [6, 1, 29, 44448],
    [0, 2, 17, 43872],
    [0, 2, 6, 38256],
    [5, 1, 27, 18808],
    [0, 2, 15, 18800],
    [0, 2, 4, 25776],
    [3, 1, 23, 27216],
    [0, 2, 10, 59984],
    [8, 1, 31, 27432],
    [0, 2, 19, 23232],
    [0, 2, 7, 43872],
    [5, 1, 28, 37736],
    [0, 2, 16, 37600],
    [0, 2, 5, 51552],
    [4, 1, 24, 54440],
    [0, 2, 12, 54432],
    [0, 2, 1, 55888],
    [2, 1, 22, 23208],
    [0, 2, 9, 22176],
    [7, 1, 29, 43736],
    [0, 2, 18, 9680],
    [0, 2, 7, 37584],
    [5, 1, 26, 51544],
    [0, 2, 14, 43344],
    [0, 2, 3, 46240],
    [4, 1, 23, 46416],
    [0, 2, 10, 44368],
    [9, 1, 31, 21928],
    [0, 2, 19, 19360],
    [0, 2, 8, 42416],
    [6, 1, 28, 21176],
    [0, 2, 16, 21168],
    [0, 2, 5, 43312],
    [4, 1, 25, 29864],
    [0, 2, 12, 27296],
    [0, 2, 1, 44368],
    [2, 1, 22, 19880],
    [0, 2, 10, 19296],
    [6, 1, 29, 42352],
    [0, 2, 17, 42208],
    [0, 2, 6, 53856],
    [5, 1, 26, 59696],
    [0, 2, 13, 54576],
    [0, 2, 3, 23200],
    [3, 1, 23, 27472],
    [0, 2, 11, 38608],
    [11, 1, 31, 19176],
    [0, 2, 19, 19152],
    [0, 2, 8, 42192],
    [6, 1, 28, 53848],
    [0, 2, 15, 53840],
    [0, 2, 4, 54560],
    [5, 1, 24, 55968],
    [0, 2, 12, 46496],
    [0, 2, 1, 22224],
    [2, 1, 22, 19160],
    [0, 2, 10, 18864],
    [7, 1, 30, 42168],
    [0, 2, 17, 42160],
    [0, 2, 6, 43600],
    [5, 1, 26, 46376],
    [0, 2, 14, 27936],
    [0, 2, 2, 44448],
    [3, 1, 23, 21936],
    [0, 2, 11, 37744],
    [8, 2, 1, 18808],
    [0, 2, 19, 18800],
    [0, 2, 8, 25776],
    [6, 1, 28, 27216],
    [0, 2, 15, 59984],
    [0, 2, 4, 27296],
    [4, 1, 24, 43872],
    [0, 2, 12, 43744],
    [0, 2, 2, 37600],
    [3, 1, 21, 51568],
    [0, 2, 9, 51552],
    [7, 1, 29, 54440],
    [0, 2, 17, 54432],
    [0, 2, 5, 55888],
    [5, 1, 26, 23208],
    [0, 2, 14, 22176],
    [0, 2, 3, 42704],
    [4, 1, 23, 21224],
    [0, 2, 11, 21200],
    [8, 1, 31, 43352],
    [0, 2, 19, 43344],
    [0, 2, 7, 46240],
    [6, 1, 27, 46416],
    [0, 2, 15, 44368],
    [0, 2, 5, 21920],
    [4, 1, 24, 42448],
    [0, 2, 12, 42416],
    [0, 2, 2, 21168],
    [3, 1, 22, 43320],
    [0, 2, 9, 26928],
    [7, 1, 29, 29336],
    [0, 2, 17, 27296],
    [0, 2, 6, 44368],
    [5, 1, 26, 19880],
    [0, 2, 14, 19296],
    [0, 2, 3, 42352],
    [4, 1, 24, 21104],
    [0, 2, 10, 53600],
    [8, 1, 30, 59696],
    [0, 2, 18, 54560],
    [0, 2, 7, 55968],
    [6, 1, 27, 27472],
    [0, 2, 15, 22224],
    [0, 2, 5, 19168],
    [4, 1, 25, 42216],
    [0, 2, 12, 41680],
    [0, 2, 1, 53584],
    [2, 1, 21, 55592],
    [0, 2, 9, 54560],
];
function GregorianIsLeapYear(y) {
    if ((y % 4) != 0) {
        return false;
    }
    if ((y % 100) != 0) {
        return true;
    }
    return (y % 400) == 0;
}
function GetYearInfo(lunarYear, index) {
    if (lunarYear < MinLunisolarYear || lunarYear > MaxLunisolarYear) {
        throw new Error("year");
    }
    return s_yinfo[lunarYear - MinLunisolarYear][index];
}
function CheckTicksRange(ticks) {
    if (ticks < MinValue.Ticks || ticks > MaxValue.Ticks) {
        throw new Error("time");
    }
}
function GetGregorianDaysInMonth(year, month) {
    if (month < 1 || month > 12)
        throw new Error("Argument 'month' out of range");
    var even = ((month % 2) === 0);
    if (month > 7)
        return (even ? 31 : 30);
    if (month === 2) {
        return ((year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)) ? 29 : 28);
    }
    return (even ? 30 : 31);
}
function GregorianToLunar(solarYear, solarMonth, solarDate) {
    var outData = { lunarYear: 0, lunarMonth: 0, lunarDate: 0 };
    var isLeapYear = GregorianIsLeapYear(solarYear);
    var jan1Month;
    var jan1Date;
    var solarDay = isLeapYear ? s_daysToMonth366[solarMonth - 1] : s_daysToMonth365[solarMonth - 1];
    solarDay += solarDate;
    var lunarDay = solarDay;
    outData.lunarYear = solarYear;
    if (outData.lunarYear == (MaxLunisolarYear + 1)) {
        outData.lunarYear--;
        lunarDay += (GregorianIsLeapYear(outData.lunarYear) ? 366 : 365);
        jan1Month = GetYearInfo(outData.lunarYear, Jan1Month);
        jan1Date = GetYearInfo(outData.lunarYear, Jan1Date);
    }
    else {
        jan1Month = GetYearInfo(outData.lunarYear, Jan1Month);
        jan1Date = GetYearInfo(outData.lunarYear, Jan1Date);
        if ((solarMonth < jan1Month) ||
            (solarMonth == jan1Month && solarDate < jan1Date)) {
            outData.lunarYear--;
            lunarDay += (GregorianIsLeapYear(outData.lunarYear) ? 366 : 365);
            jan1Month = GetYearInfo(outData.lunarYear, Jan1Month);
            jan1Date = GetYearInfo(outData.lunarYear, Jan1Date);
        }
    }
    lunarDay -= s_daysToMonth365[jan1Month - 1];
    lunarDay -= (jan1Date - 1);
    var mask = 0x8000;
    var yearInfo = GetYearInfo(outData.lunarYear, nDaysPerMonth);
    var days = ((yearInfo & mask) != 0) ? 30 : 29;
    outData.lunarMonth = 1;
    while (lunarDay > days) {
        lunarDay -= days;
        outData.lunarMonth++;
        mask >>= 1;
        days = ((yearInfo & mask) != 0) ? 30 : 29;
    }
    outData.lunarDate = lunarDay;
    return outData;
}
function TimeToLunar(time) {
    var gregorianCalendar = new GregorianCalendar();
    var gy = gregorianCalendar.GetYear(time);
    var gm = gregorianCalendar.GetMonth(time);
    var gd = gregorianCalendar.GetDayOfMonth(time);
    var ad = GregorianToLunar(gy, gm, gd);
    return {
        year: ad.lunarYear
    };
}
function GetSexagenaryYear(time) {
    CheckTicksRange(time.Ticks);
    var x = TimeToLunar(time);
    return ((x.year - 4) % 60) + 1;
}
function GetTerrestrialBranch(sexagenaryYear) {
    if (sexagenaryYear < 1 || sexagenaryYear > 60) {
        throw new Error("sexagenaryYear");
    }
    return ((sexagenaryYear - 1) % 12) + 1;
}
function ChineseZodiac(date) {
    var dotNetDate = DotNetDateTime.fromJsDate(date);
    var sexagenaryYear = GetSexagenaryYear(dotNetDate);
    var terrestrialBranch = GetTerrestrialBranch(sexagenaryYear);
    var years = ["Rat", "Ox", "Tiger", "Rabbit", "Dragon", "Snake", "Horse", "Goat", "Monkey", "Rooster", "Dog", "Pig"];
    return years[terrestrialBranch - 1];
}
exports.ChineseZodiac = ChineseZodiac;
