
"use strict";

// Epoch, also known as Unix timestamps, is the number of seconds
// (not milliseconds!) that have elapsed since
// January 1, 1970 at 00: 00: 00 GMT(1970 - 01 - 01 00: 00: 00 GMT).


// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date
// The ECMAScript epoch and timestamps
// A JavaScript date is fundamentally specified
// as the number of milliseconds that have elapsed since midnight on
// January 1, 1970, UTC.
// (Negative values are returned for prior times.)
// This date and time are not the same as the UNIX epoch

// Date.prototype.getTime()
// Returns the numeric value of the specified date as the number of milliseconds since January 1, 1970, 00: 00: 00 UTC.
// getTime() always uses UTC for time representation.


// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/Date
// new Date(now.getTime())
// new Date(year, monthIndex)
// [...]
// new Date(year, monthIndex, day, hours, minutes, seconds, milliseconds)
// Date constructor uses local time
// let localDate = new Date(2020, 0);
// let utcDate = new Date(Date.UTC(2020, 0));
// console.log(localDate, utcDate);


// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/UTC
// The Date.UTC() method accepts parameters similar to the Date constructor, but treats them as UTC.
// It returns the number of milliseconds since January 1, 1970, 00: 00: 00 UTC.


function to_unix_timestamp(input?: Date)
{
    input = input || (new Date());
    return Math.floor(input.getTime() / 1000.0); // in second
}

function from_unix_timestamp(unix_timestamp?: number | string)
{
    if (unix_timestamp == null) unix_timestamp = (new Date()).getTime();
    else
        unix_timestamp = parseInt(unix_timestamp.toString(), 10) * 1000;

    return new Date(unix_timestamp);
}

function from_ecma_timestamp(ecma_timestamp?: number | string)
{
    if (ecma_timestamp == null) ecma_timestamp = (new Date()).getTime();
    return new Date(parseInt(ecma_timestamp.toString(), 10));
}

function to_ecma_timestamp(input?: Date)
{
    input = input || (new Date());
    return input.getTime();
}


function to_us_display_date(input?: Date)
{
    input = input || (new Date());
    return input.toISOString().split('T')[0].split('-').join('/');
}

function to_gmt_time(input?: Date)
{
    input = input || (new Date());
    return input.toISOString().split('T')[1].split('Z')[0];
}



export function isLeapYear(year:number)
{
    if (year % 400 == 0)
        return true;

    if (year % 100 == 0)
        return false;

    if (year % 4 == 0)
        return true;

    return false;
} // End Function isLeapYear 




// https://stackoverflow.com/questions/1197928/how-to-add-30-minutes-to-a-javascript-date-object
function dateAdd(date: Date, unit:string, interval:number)
{
    if (!(date instanceof Date))
        return undefined;

    let ret = new Date(date); //don't change original date

    function checkRollover()
    {
        if (ret.getDate() != date.getDate())
            ret.setDate(0);
    }

    unit = String(unit).toLowerCase()

    let fakeUnit = { "century": 100, "millenium": 1000, "decade": 10 };

    for (let key in fakeUnit)
    {
        if (!fakeUnit.hasOwnProperty(key))
            continue;

        if (unit === key)
        {
            unit = "year";
            interval *= (<any>fakeUnit)[key];
        }
    } 

    switch (unit)
    {
        case 'year': ret.setFullYear(ret.getFullYear() + interval); checkRollover(); break; // LEAPYEAR !
        case 'quarter': ret.setMonth(ret.getMonth() + 3 * interval); checkRollover(); break; // MONTH_END
        case 'month': ret.setMonth(ret.getMonth() + interval); checkRollover(); break; // PHUCK ! 
        case 'week': ret.setDate(ret.getDate() + 7 * interval); break;
        case 'day': ret.setDate(ret.getDate() + interval); break;
        case 'hour': ret.setTime(ret.getTime() + interval * 3600000); break;
        case 'minute': ret.setTime(ret.getTime() + interval * 60000); break;
        case 'second': ret.setTime(ret.getTime() + interval * 1000); break;
        default: ret = undefined; break;
    }
    return ret;
}


function isArray(obj: any)
{
    return !!obj && obj.constructor === Array;
}


function isObject(obj: any)
{
    return (typeof obj === 'object' && obj !== null);
}

function isPrimitive(val: any)
{
    return !(typeof val == "object" || typeof val == "function");
}


function mergeArrays(args: any[])
{
    let d: string[] = [];

    for (let i = 0; i < args.length; ++i)
    {
        if (isArray(args[i]))
        {
            for (let j = 0; j < args[i].length; ++j)
            {
                d.push(args[i][j]);
            }
        }
        else
            d.push(args[i]);
    }

    return d;
}


function formatString(...args: any[])
{
    let format: string = args.shift();
    if (format == null)
        return "";
    format = format.toString();

    if (isObject(args[0]) && !isArray(args[0]))
    {
        args = args[0];

        for (let key in args)
        {
            if (args.hasOwnProperty(key))
            {
                let val = args[key];
                if (val != null && isPrimitive(val))
                    format = format.replace(new RegExp("\\{" + key + "\\}", "gi"), val.toString());
            }
        }

        return format;
    }
    else 
    {
        let d: string[] = mergeArrays(args);

        return format.replace(/{(\d+)}/g, function (match: string, number: number)
        {
            let val = d[number];

            if (val != null && isPrimitive(val))
                return val.toString();

            return match;
        });
    }

    throw new Error("Bad arguments in formatString");
}

// instead, use ES6:
// let soMany = 10;
// console.log(`This is ${soMany} times easier!`);

// formatString("{0} is dead, but {1} is alive! {0} {2}", ["ASP", "ASP.NET", "foo"]);
// formatString("{0} is dead, but {1} is alive! {0} {2}", "ASP", "ASP.NET");
// formatString("{a} is dead, but {b} is alive! {a}, {b}", { "a": "hello", "b": "ciao" });
// formatString("{a} is dead, but {b} is alive! {a}, {b}", { "a": "hello", "b": BigInt(5) });
// formatString("{a} is dead, but {b} is alive! {a}, {b}", { "a": "hello" });
// formatString("{a} is dead, but {b} is alive! {a}, {b}", { "a": "hello", "b":null });
// formatString("{0} is dead, but {1} is alive! {0} {2}", document.querySelectorAll("*"));
// formatString("{0} is dead, but {1} is alive! {0} {2} {3} {4}", ["ASP", true], "foo", ["def", 123]);
// formatString("{0} is dead, but {1} is alive! {0} {2} {3} {4}", ["ASP", null], null, ["def", 123]);

function simpleFormat(...args: any[])
{
    let format: string = args.shift();
    if (format == null)
        return "";

    format = format.toString();

    let d: string[] = mergeArrays(args);

    return format.replace(/{(\d+)}/g, function (match: string, number: number)
    {
        let val = d[number];

        if (val != null && isPrimitive(val))
            return val.toString();

        return match;
    });
}

// simpleFormat("{0} is dead, but {1} is alive! {0} {2} {3} {4}", ["ASP", true], "foo", ["def", 123]);
// simpleFormat("{0} is dead, but {1} is alive! {0} {2}", ["ASP", "ASP.NET", "foo"]);
// simpleFormat("{0} is dead, but {1} is alive! {0} {2}", document.querySelectorAll("*"));
// simpleFormat("{a} is dead, but {b} is alive! {a}, {b} {c}", { "a": "hello", "b": "ciao" });
// simpleFormat("{0} is dead, but {1} is alive! {0} {2} {3} {4}", "abc" + "1 1", 123, 2);


function formatObject(format: string, args: any) //, language: string)
{
    if (format == null)
        return "";

    format = format.toString();

    if (isObject(args) && !isArray(args))
    {
        for (let key in args)
        {
            if (args.hasOwnProperty(key))
            {
                let val = args[key];
                if (val != null && isPrimitive(val))
                    format = format.replace(new RegExp("\\{" + key + "\\}", "gi"), val.toString());
            }
        }

        return format;
    }

    throw new Error("Bad arguments in formatObject");
}


function padLeft(str:string, targetLength:number, padString:string)
{
    targetLength = targetLength >> 0; //floor if number or convert non-number to 0;
    padString = String(typeof padString !== 'undefined' ? padString : ' ');
    if (str.length > targetLength)
    {
        return String(str);
    }
    else
    {
        targetLength = targetLength - str.length;
        if (targetLength > padString.length)
        {
            padString += padString.repeat(targetLength / padString.length); //append to original to ensure we are longer than needed
        }
        return padString.slice(0, targetLength) + String(str);
    }
}

function padRight(str: string, targetLength:number, padString:string)
{
    targetLength = targetLength >> 0; //floor if number or convert non-number to 0;
    padString = String(typeof padString !== 'undefined' ? padString : ' ');
    if (str.length > targetLength)
    {
        return String(str);
    }
    else
    {
        targetLength = targetLength - str.length;
        if (targetLength > padString.length)
        {
            padString += padString.repeat(targetLength / padString.length); //append to original to ensure we are longer than needed
        }
        return String(str) + padString.slice(0, targetLength);
    }
}

function trimChar(str: string, charToRemove: string)
{
    while (str.charAt(0) == charToRemove)
    {
        str = str.substr(1);
    }

    while (str.charAt(str.length - 1) == charToRemove)
    {
        str = str.substr(0, str.length - 1);
    }

    return str;
}


function trimLeft(str: string, charToRemove: string)
{
    while (str.charAt(0) == charToRemove)
    {
        str = str.substr(1);
    }

    return str;
}


function trimRight(str: string, charToRemove: string)
{
    while (str.charAt(str.length - 1) == charToRemove)
    {
        str = str.substr(0, str.length - 1);
    }

    return str;
}







function parseFormat(format:string, dat:any)
{
    let sb = [];
    let specialBuffer = [];
    let specials = ["y", "M", "d", "H", "h", "m", "s", "f", "t", 'z', "K"];


    // https://www.timeanddate.com/time/time-zones-interesting.html
    // India: UTC +5:30
    // Northern Territory: UTC +9:30
    // Cocos (Keeling) Islands: UTC +06:30
    // New Zealand, Chatham Islands: UTC +12:45 / +13:45
    // Nepal: UTC +5:45
    // French Polynesia, Marquesas Islands: UTC -9:30


    // https://www.postgresql.org/docs/9.2/datatype-datetime.html#SECT2
    // https://www.postgresql.org/docs/9.2/datatype-datetime.html#:~:text=8.5.2
    // https://en.wikipedia.org/wiki/ISO_8601
    // 2021-12-16T16:22:25+00:00
    // "yyyy'-'MM'-'dd'T'HH':'mm':'sszzz"
    // ISO	ISO 8601, SQL standard	1997-12-17 07:37:16-08
    // SQL: '12-10-25 00:00:00 +01:00';  1997-12-17 07:37:16-08:00
    // DateTimeFormatInfo instance = DateTimeFormatInfo.GetInstance(provider);
    // return StringBuilderCache.GetStringAndRelease(DateTimeFormat.FormatStringBuilder(dateTime, (ReadOnlySpan<char>) format, instance, offset));

    let lastChar = null;
    for (let i = 0; i < format.length; ++i)
    {
        let c = format.charAt(i);
        let isSpecial = specials.indexOf(c) > -1;

        if (isSpecial)
        {
            if (c == lastChar)
                specialBuffer.push(c);
            else
            {
                if (specialBuffer.length > 0)
                {
                    let v = dat[specialBuffer.join("")];
                    sb.push(v);
                    specialBuffer = [];
                }

                specialBuffer.push(c);
            }

            lastChar = c;
        }
        else
        {
            if (specialBuffer.length > 0)
            {
                let v = dat[specialBuffer.join("")];
                sb.push(v);
                specialBuffer = [];
            }

            sb.push(c);
            lastChar = null;
        }

        
    }

    if(specialBuffer.length > 0)
    {
        let v = dat[specialBuffer.join("")];
        sb.push(v);
        specialBuffer = null;
    }
    else 
        specialBuffer = null;

    return sb.join("");
}




function getDateData(d:Date)
{
    // zzz +00:00
    // MMM: jun
    // MMMM: june
    // ddd: Thu
    // dddd: Thursday
    // https://www.codegrepper.com/code-examples/javascript/javascript+get+timezone+offset+for+specific+timezone
    let weekday = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
    let abb = ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"];
    let labb = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];

    // https://tetran.ru/SiteContentEn/Details/13
    let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    let short_months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    let short_months1 = ["Jan.", "Feb.", "Mar.", "Apr.", "May", "June", "July", "Aug.", "Sept.", "Oct.", "Nov.", "Dec."];
    let short_months_RU = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"];


    // console.log(Intl.DateTimeFormat().resolvedOptions().timeZone)
    let mins = d.getTimezoneOffset();
    let sign = "-";
    if (mins < 0)
    {
        sign = "+";
        mins *= -1;
    }


    // https://stackoverflow.com/questions/1091372/getting-the-clients-time-zone-and-offset-in-javascript
    let min = mins % 60;
    let hours = (mins - min) / 60;
    // let offset = "GMT" + sign + padLeft(hours.toFixed(0).toString(), 2, "0") + padLeft(min.toFixed(0).toString(),2,"0")
    // let gmtOffset = d.toString().match(/([A-Z]+[\+-][0-9]+)/)[1];
    // let tzName = d.toString().match(/\(([A-Za-z\s].*)\)/)[1];
    // let offsetHours = d.toString().match(/([-\+][0-9]+)\s/)[1]

    function nf(nums:number)
    {
        return padLeft(trimRight(padLeft((d.getMilliseconds()).toFixed(0), nums, "0"), "0"), nums, "0");
    }


    // https://www.c-sharpcorner.com/blogs/date-and-time-format-in-c-sharp-programming1
    return {
        d: d.getDate().toFixed(0),
        dd: padLeft(d.getDate().toFixed(0), 2, "0"),
        ddd: labb[d.getDay()],
        dddd: weekday[d.getDay()],

        M: (d.getMonth() + 1).toFixed(0),
        MM: padLeft((d.getMonth() + 1).toFixed(0), 2, "0"),
        MMM: short_months[d.getMonth()],
        MMMM: months[d.getMonth()],

        yy: d.getFullYear()%100,
        yyyy: d.getFullYear(),

        H: (d.getHours()).toFixed(0),
        HH: padLeft((d.getHours()).toFixed(0), 2, "0"),

        h: (d.getHours()%12).toFixed(0),
        hh: padLeft((d.getHours()%12).toFixed(0), 2, "0"),

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
        zz: sign + padLeft(hours.toFixed(0).toString(), 2, "0") ,
        zzz: sign + padLeft(hours.toFixed(0).toString(), 2, "0") + padLeft(min.toFixed(0).toString(), 2, "0"),
        // zzz: d.toString().match(/([-\+][0-9]+)\s/)[1], // ZZZ: offset of OS
        K: sign + padLeft(hours.toFixed(0).toString(), 2, "0") + padLeft(min.toFixed(0).toString(), 2, "0"),
    };
}


function locations(needle:string, haystack:string)
{
    let ls = [], extracts = [], pairs=[], i = -1, last = 0;
    while ((i = haystack.indexOf(needle, i + 1)) >= 0)
    {
        pairs.push([last, i]);
        extracts.push(haystack.substring(last, i));
        ls.push(i);
        last = i + 1;
    }

    pairs.push([last, haystack.length]);
    extracts.push(haystack.substring(last, haystack.length));

    return { "indices": ls, "extracts": extracts, "pairs": pairs };
}

export function formatDate(d:Date, format: string)
{
    format = format.replace(new RegExp("''", 'g'), '\b'); // Substitute double ''
    let dat = getDateData(d);

    let pos = locations("'", format).extracts;
    if (pos.length === 0)
        pos.push(format);

    if (pos.length % 2 != 1)
        throw new Error("Invalid number of ticks (')");

    let sb = [];
    for (let i = 0; i < pos.length; ++i)
    {
        if (i % 2) // inside
            sb.push(pos[i]);
        else
            sb.push(parseFormat(pos[i], dat));
    }

    format = sb.join(""); 
    format = format.replace(new RegExp("\b", 'g'), "'"); // Back-substitute double ''
    console.log(format);
    return format;
}


export function testDateFormat()
{
    let d = new Date();
    let format = "dddd', 'dd'.'MM'.'yyyy' 'HH':'mm':'ss'.'fff";
    // format = "dddd dddMMyyyydd";
    formatDate(d, format);
}


// formatObject("{a} is dead, but {b} is alive! {a}, {b} {c}", { "a": "hello", "b": "ciao" });
// formatObject("{a} is dead, but {b} is alive! {a}, {b}", document.querySelectorAll("*"));
// formatObject("{a} is dead, but {b} is alive! {a}, {b}", null);
// formatObject("{a} is dead, but {b} is alive! {a}, {b}", "hello");
// formatObject("", [1, 2])


// https://stackoverflow.com/questions/14297625/work-with-a-time-span-in-javascript/14297656
export class Timespan
{

    protected m_timeSpan: number;


    get sign(): number
    {
        if (this.m_timeSpan == 0)
            return 0;

        if (this.m_timeSpan < 0)
            return -1;

        return 1;
    }
    
    get totalMilliseconds(): number
    {
        return this.m_timeSpan;
    }
    set totalMilliseconds(value: number)
    {
        this.m_timeSpan = value;
    }


    get milliseconds(): number
    {
        return this.totalMilliseconds % 1000;
    }



    get totalSeconds(): number
    {
        return (this.totalMilliseconds - this.milliseconds) / 1000;
    }
    set totalSeconds(value: number)
    {
        this.m_timeSpan = value*1000;
    }



    get seconds(): number
    {
        return (this.totalSeconds % 60);
    }


    get totalMinutes(): number
    {
        return ((this.totalSeconds - this.seconds) / 60);
    }
    set totalMinutes(value: number)
    {
        this.m_timeSpan = value * 60 * 1000;
    }



    get minutes(): number
    {
        return (this.totalMinutes % 60);
    }


    get totalHours(): number
    {
        return ((this.totalMinutes - this.minutes) / 60);
    }
    set totalHours(value: number)
    {
        this.m_timeSpan = value *60 * 60 * 1000;
    }


    get hours(): number
    {
        return (this.totalHours % 24);
    }


    get totalDays(): number
    {
        return ((this.totalHours - this.hours) / 24);
    }
    set totalDays(value: number)
    {
        this.m_timeSpan = value * 24 * 60 * 60 * 1000;
    }

    get days(): number
    {
        return (this.totalDays % 365);
    }

    
    get years(): number
    {
        return ((this.totalDays - this.days) / 365);
    }


    constructor(ms:number)
    {     
        this.m_timeSpan = ms;
    }


    public asSeconds(): number
    {
        return this.m_timeSpan / 1000;
    }

    public asMinutes(): number
    {
        return this.m_timeSpan / 60000;
    }

    public asHours(): number
    {
        return this.m_timeSpan / 3600000;
    }

    public asDays(): number
    {
        return this.m_timeSpan / 86400000;
    }

    public asWeeks(): number
    {
        return this.m_timeSpan / 604800000;
    }

    public asMonthsOf30days(): number
    {
        return this.m_timeSpan / 2592000000;
    }

    public asMonths(): number
    {
        return this.m_timeSpan * 12 / 31536000000;
    }

    public asQuarters(): number
    {
        return this.m_timeSpan * 4 / 31536000000;
    }

    public asSemesters(): number
    {
        return this.m_timeSpan*2 / 31536000000;
    }

    public asYears(): number
    {
        return this.m_timeSpan / 31536000000;
    }

    public asDecades(): number
    {
        return this.m_timeSpan / 315576000000; // 10*365.25*86400000
    }


    public asCenturies(): number
    {
        return this.m_timeSpan / 3155760000000; // 100*365.25*86400000
    }


    public asMillenia(): number
    {
        return this.m_timeSpan / 31557600000000; // 1000*365.25*86400000
    }


    // Myriad: 10,000
    // https://en.wikipedia.org/wiki/Attic_numerals
    // https://en.wikipedia.org/wiki/Greek_numerals#Higher_numbers
    // https://en.wikipedia.org/wiki/Sexagesimal
    public asMyriads(): number
    {
        return this.m_timeSpan / 315576000000000; // 10000*365.25*86400000
    }


    // A lakh is a unit in the Indian numbering system equal to one hundred thousand 
    public asLakhs(): number
    {
        return this.m_timeSpan / 3155760000000000; // 100000*365.25*86400000
    }

    // millions of years
    public asAges(): number
    {
        return this.m_timeSpan / 31557600000000000; // 1000000*365.25*86400000
    }

    // 10 million years
    public asEpochs(): number
    {
        return this.m_timeSpan / 315576000000000000; // 10000000*365.25*86400000
    }
    
    // 100 million years
    public asPeriods(): number
    {
        return this.m_timeSpan / 3155760000000000000; // 100000000*365.25*86400000
    }

    // https://manoa.hawaii.edu/exploringourfluidearth/node/1341
    // https://en.wikipedia.org/wiki/Geologic_time_scale
    // https://en.wikipedia.org/wiki/Time_scale
    // 0.5 billion years or more 
    public asEon(): number
    {
        return this.m_timeSpan / 15778800000000000000; // 500000000*365.25*86400000
    }

    // Aeon: In astronomy an aeon is defined as a billion years
    public asAeon(): number
    {
        return this.m_timeSpan / 31557600000000000000; // 1000000000*365.25*86400000
    }

    public changeSign()
    {
        this.m_timeSpan *= -1;
    }


    public asAgo(language: string)
    {
        // https://en.wikipedia.org/wiki/Moment_(time)
        // A moment (momentum) is a medieval unit of time. (90 seconds on average)
        // The movement of a shadow on a sundial covered 40 moments in a solar hour,
        // a twelfth of the period between sunrise and sunset.
        // 40 moments in a solar hour ==> 60e/40e = 1.5 min
        // Although the length of a moment in modern seconds was therefore not fixed, on average, a moment corresponded to 90 seconds.
        let timeScales = [
              { "what": "Aeon", "p": 2, "tp": "over {n} aeons ago", "s": 1, "ts": "over an aeon ago", }
            , { "what": "Eon", "p": 2, "tp": "over {n} eons ago", "s": 1, "ts": "over an eon ago", }
            , { "what": "Epochs", "p": 2, "tp": "over {n} epochs ago", "s": 1, "ts": "over an epoch ago", }
            , { "what": "Ages", "p": 2, "tp": "over {n} ages ago", "s": 1, "ts": "over an age ago", }
            , { "what": "Lakhs", "p": 2, "tp": "over {n} lakh years ago", "s": 1, "ts": "over a lakh year ago", }
            , { "what": "Myriads", "p": 2, "tp": "over {n} myriad years ago", "s": 1, "ts": "over a myriad years ago", }
            , { "what": "Millenia", "p": 2, "tp": "over {n} millenia ago", "s": 1, "ts": "over a millenium ago", }
            , { "what": "Centuries", "p": 2, "tp": "over {n} centuries ago", "s": 1, "ts": "over a century ago", }
            , { "what": "Decades", "p": 2, "tp": "over {n} decades ago", "s": 1, "ts": "over a decade ago", }
            , { "what": "Years", "p": 2, "tp": "over {n} years ago", "s": 1, "ts": "over a year ago", }
            , { "what": "Months", "p": 2, "tp": "over {n} months ago", "s": 1, "ts": "over a month ago", }
            , { "what": "Weeks", "p": 2, "tp": "over {n} weeks ago", "s": 1, "ts": "over a week ago", }
            , { "what": "Days", "p": 2, "tp": "over {n} days ago", "s": 1, "ts": "over a day ago", }
            , { "what": "Hours", "p": 2, "tp": "over {n} hours ago", "s": 1, "ts": "over an hour ago", }
            , { "what": "Minutes", "p": 2, "tp": "over {n} minutes ago", "s": 1, "ts": "over a minute ago", }
            , { "what": "Seconds", "p": 10, "tp": "over {n} seconds ago", "s": 1, "ts": "just about now", }
            , { "what": "Seconds", "p": 0, "tp": "just about now", "s": 1, "ts": "just about now", }
        ];

        let changed: boolean = this.m_timeSpan < 0;
        if (changed)
        { 
            this.changeSign();
            timeScales = [
                  {"what":"Aeon","p": 2,"tp":"in {n} aeons","s": 1,"ts":"in an aeon", }
                , {"what":"Eon","p": 2,"tp":"in {n} eons","s": 1,"ts":"in an eon", }
                , {"what":"Epochs","p": 2,"tp":"in {n} epochs","s": 1,"ts":"in an epoch", }
                , {"what":"Ages","p": 2,"tp":"in {n} ages","s": 1,"ts":"in an age", }
                , {"what":"Lakhs","p": 2,"tp":"in {n} lakh years","s": 1,"ts":"in a lakh year", }
                , {"what":"Myriads","p": 2,"tp":"in {n} myriad years","s": 1,"ts":"in a myriad years", }
                , {"what":"Millenia","p": 2,"tp":"in {n} millenia","s": 1,"ts":"in a millenium", }
                , {"what":"Centuries","p": 2,"tp":"in {n} centuries","s": 1,"ts":"in a century", }
                , {"what":"Decades","p": 2,"tp":"in {n} decades","s": 1,"ts":"in a decade", }
                , {"what":"Years","p": 2,"tp":"in {n} years","s": 1,"ts":"in a year", }
                , {"what":"Months","p": 2,"tp":"in {n} months","s": 1,"ts":"in a month", }
                , {"what":"Weeks","p": 2,"tp":"in {n} weeks","s": 1,"ts":"in a week", }
                , {"what":"Days","p": 2,"tp":"in {n} days","s": 1,"ts":"in a day", }
                , {"what":"Hours","p": 2,"tp":"in {n} hours","s": 1,"ts":"in an hour", }
                , {"what":"Minutes","p": 2,"tp":"in {n} minutes","s": 1,"ts":"in a minute", }
                , {"what":"Seconds","p": 10,"tp":"in {n} seconds","s": 1,"ts":"soon", }
                , { "what": "Seconds", "p": 0, "tp": "soon", "s": 1, "ts":"soon", }
            ];
        }

        for (let i = 0; i < timeScales.length; ++i)
        {
            let rec = timeScales[i];
            let a = (<any>this)["as" + rec.what]();
            let n = Math.floor(a).toFixed(0);

            if (a >= rec.p)
            {
                return formatObject(rec.tp, { "n": n });
            }
            else if (a >= 1)
                return rec.ts;
        }

        if (changed)
            this.changeSign();

        return "in the future?";
    }


    
    public static fromDate(d1: Date, d2?: Date): Timespan
    {
        d2 = d2 || new Date();
        let ms = d2.valueOf() - d1.valueOf();
        return new Timespan(ms);
    }


    

}




enum DateTimeKind
{
    LOCAL,
    UTC
}



export class MyDate
{

    protected m_dateTimeKind: DateTimeKind;
    protected m_date: Date;


    constructor(kind: DateTimeKind, ecma_epoch?:number)
    {
        this.m_dateTimeKind = kind;
        if(ecma_epoch != null)
            this.m_date = new Date(ecma_epoch);
        else
            this.m_date = new Date();
    }


    get day(): number
    {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            return this.m_date.getUTCDay();

        return this.m_date.getDay();
    }
    set day(value: number)
    {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            this.m_date.setUTCDate(value);

        this.m_date.setDate(value);
    }

    get month(): number
    {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            return this.m_date.getUTCMonth()+1;

        return this.m_date.getMonth()+1;
    }
    set month(value: number)
    {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            this.m_date.setUTCMonth(value-1);

        this.m_date.setMonth(value - 1);
    }

    get year(): number
    {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            return this.m_date.getUTCFullYear();

        return this.m_date.getFullYear();
    }
    set year(value: number)
    {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            this.m_date.setUTCFullYear(value);

        this.m_date.setFullYear(value);
    }


    get hour(): number
    {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            return this.m_date.getUTCHours();

        return this.m_date.getHours();
    }
    set hour(value: number)
    {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            this.m_date.setUTCHours(value);

        this.m_date.setHours(value);
    }

    get minute(): number
    {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            return this.m_date.getUTCMinutes();

        return this.m_date.getMinutes();
    }
    set minute(value: number)
    {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            this.m_date.setUTCMinutes(value);

        this.m_date.setMinutes(value);
    }


    get second(): number
    {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            return this.m_date.getUTCSeconds();

        return this.m_date.getSeconds();
    }
    set second(value: number)
    {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            this.m_date.setUTCSeconds(value);

        this.m_date.setSeconds(value);
    }


    get millisecond(): number
    {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            return this.m_date.getUTCMilliseconds();

        return this.m_date.getMilliseconds();
    }
    set millisecond(value: number)
    {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            this.m_date.setUTCMilliseconds(value);

        this.m_date.setMilliseconds(value);
    }

    
    public addYears(amount: number)
    {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            this.m_date.setUTCFullYear(this.m_date.getUTCFullYear() + amount);
        else
            this.m_date.setFullYear(this.m_date.getFullYear() + amount);
    }


    public addSemesters(amount: number)
    {
        this.addMonths(6 * amount);
    }


    public addQuarters(amount: number)
    {
        this.addMonths(3 * amount);
    }


    public addMonths(amount: number)
    {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            this.m_date.setUTCMonth(this.m_date.getUTCMonth() + amount);
        else
            this.m_date.setMonth(this.m_date.getMonth() + amount);
    }


    public addWeeks(amount: number)
    {
        this.addDays(7 * amount);
    }


    public addDays(amount: number)
    {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            this.m_date.setUTCDate(this.m_date.getUTCDate() + amount);
        else
            this.m_date.setDate(this.m_date.getDate() + amount);

        // You may think you can add 24 hours to a date to get tomorrow's date, right? Wrong!
        // It turns out, if the user observes daylight saving time, a day is not necessarily 24 hours long. 
        // this.addMilliseconds(amount * 86400000);
    }


    public addHours(amount: number)
    {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            this.m_date.setUTCHours(this.m_date.getUTCHours() + amount);
        else
            this.m_date.setHours(this.m_date.getHours() + amount);

        // this.addMilliseconds(amount * 3600000);
    }


    public addMinutes(amount: number)
    {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            this.m_date.setUTCMinutes(this.m_date.getUTCMinutes() + amount);
        else
            this.m_date.setMinutes(this.m_date.getMinutes() + amount);

        // this.addMilliseconds(amount * 60000);
    }

    public addSeconds(amount: number)
    {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            this.m_date.setUTCSeconds(this.m_date.getUTCSeconds() + amount);
        else
            this.m_date.setSeconds(this.m_date.getSeconds() + amount);

        // this.addMilliseconds(amount * 1000);
    }

    public addMilliseconds(amount: number)
    {
        if (this.m_dateTimeKind === DateTimeKind.UTC)
            this.m_date.setUTCMilliseconds(this.m_date.getUTCMilliseconds() + amount);
        else
            this.m_date.setMilliseconds(this.m_date.getMilliseconds() + amount);

        // this.m_date.setTime(this.m_date.getTime() + amount);
    }



    // milliseconds since 1970-01-1 UTC 
    get ecma_timestamp(): number
    {
        return this.m_date.getTime();
    }
    set ecma_timestamp(value: number | string)
    {
        this.m_date = new Date(parseInt(value.toString(), 10));
    }


    // seconds since 1970-01-1 UTC 
    get unix_timestamp(): number
    {
        return Math.floor(this.m_date.getTime() / 1000.0); // in second
    }
    set unix_timestamp(value: number | string)
    {
        this.m_date = new Date(parseInt(value.toString(), 10)*1000);
    }


    public setStartOfDay()
    {
        this.hour = 0;
        this.minute = 0;
        this.second = 0;
        this.millisecond = 0;

        return this;
    }


    public setEndOfDay()
    {
        this.hour = 23;
        this.minute = 59;
        this.second = 59;
        this.millisecond = 0;

        return this;
    }


    // private static headcount: number = 0;

    public static now(kind: DateTimeKind)
    {
        return new MyDate(kind);
    }


    public static today(kind: DateTimeKind)
    {
        return new MyDate(kind, (new Date()).getTime()).setStartOfDay();
    }

}
