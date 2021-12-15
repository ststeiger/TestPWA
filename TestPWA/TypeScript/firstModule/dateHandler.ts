
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





function dateAdd(date: Date, interval:string, units:number)
{
    if (!(date instanceof Date))
        return undefined;

    let ret = new Date(date); //don't change original date

    function checkRollover()
    {
        if (ret.getDate() != date.getDate())
            ret.setDate(0);
    }

    switch (String(interval).toLowerCase())
    {
        case 'year': ret.setFullYear(ret.getFullYear() + units); checkRollover(); break;
        case 'quarter': ret.setMonth(ret.getMonth() + 3 * units); checkRollover(); break;
        case 'month': ret.setMonth(ret.getMonth() + units); checkRollover(); break;
        case 'week': ret.setDate(ret.getDate() + 7 * units); break;
        case 'day': ret.setDate(ret.getDate() + units); break;
        case 'hour': ret.setTime(ret.getTime() + units * 3600000); break;
        case 'minute': ret.setTime(ret.getTime() + units * 60000); break;
        case 'second': ret.setTime(ret.getTime() + units * 1000); break;
        default: ret = undefined; break;
    }
    return ret;
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
