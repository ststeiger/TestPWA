
"use strict";


enum DateTimeKind
{
    Unspecified = 0,
    Utc = 1,
    Local = 2,
}

    
class GregorianCalendar
{
    constructor()
    { }


    public GetYear(time: DotNetDateTime): number
    {
        let ticks = time.JavaScriptTicks;
        let dt = new Date(ticks);

        return dt.getUTCFullYear();
    }
    public GetMonth(time: DotNetDateTime): number
    {
        let ticks = time.JavaScriptTicks;
        let dt = new Date(ticks);

        return (dt.getUTCMonth() + 1);
    }
    public GetDayOfMonth(time: DotNetDateTime): number
    {
        let ticks = time.JavaScriptTicks;
        let dt = new Date(ticks);

        return dt.getUTCDate();
    }
}



class DotNetDateTime
{

    private m_ticks: number = 0;

    // constructor(...args: any[])
    constructor(ticks:number, dt:DateTimeKind)
    {
        this.m_ticks = ticks;
    }


    public static fromJsDate(dt:Date)
    {
        let jsTicks = dt.getTime();
        // let jsTicks = BigInt(dt.getTime());

        // System.Numerics.BigInteger biBaseTicks = new System.Numerics.BigInteger(621355968000000000);
        let dotNetJsbaseTicks: number = 621355968000000000;

        // System.Numerics.BigInteger tenK = new System.Numerics.BigInteger(10000);
        let tenK: number = 10000;  

        let dotTicks = dotNetJsbaseTicks + jsTicks * tenK;
        return new DotNetDateTime(dotTicks, DateTimeKind.Unspecified);
    }



    // The value of this property represents the number of 100-nanosecond intervals
    // that have elapsed since 12: 00: 00 midnight, January 1, 0001 in the Gregorian calendar,
    // Nanosecond: 1e-9
    // 100 Nanosecond: 1e-7
    // Millisecond: 1e-3
    // 1e-3*1e-4
    // 10000*1e-7
    get Ticks(): number
    {
        return this.m_ticks;
    }
    // set Ticks(value: number) { this.m_ticks = value; }


    get JavaScriptTicks(): number
    {
        let dotNetJsbaseTicks: number = 621355968000000000;
        let dotNetTicksSince1970 = this.m_ticks - dotNetJsbaseTicks;
        let jsTicks = parseInt((dotNetTicksSince1970 / 10000).toString(), 10);

        return jsTicks;
    }
}


const MinLunisolarYear: number = 1901;
const MaxLunisolarYear: number = 2100;

// Number of days in a non-leap year
const DaysPerYear: number = 365;



// Number of days in 4 years
const DaysPer4Years: number = DaysPerYear * 4 + 1;       // 1461
// Number of days in 100 years
const DaysPer100Years: number = DaysPer4Years * 25 - 1;  // 36524
// Number of days in 400 years
const DaysPer400Years: number = DaysPer100Years * 4 + 1; // 146097
// Number of days from 1/1/0001 to 12/31/9999
const DaysTo10000: number = DaysPer400Years * 25 - 366;  // 3652059
// Number of 100ns (10E-7 second) ticks per time unit
const TicksPerMillisecond: number = 10000;
const TicksPerSecond: number = TicksPerMillisecond * 1000;
const TicksPerMinute: number = TicksPerSecond * 60;
const TicksPerHour: number = TicksPerMinute * 60;
const TicksPerDay: number = TicksPerHour * 24;

const MinTicks: number = 0;
const MaxTicks: number = DaysTo10000 * TicksPerDay - 1;
            
const MinValue: DotNetDateTime = new DotNetDateTime(MinTicks, DateTimeKind.Unspecified);
const MaxValue: DotNetDateTime = new DotNetDateTime(MaxTicks, DateTimeKind.Unspecified);

const Jan1Month: number = 1;
const Jan1Date: number = 2;
const nDaysPerMonth: number = 3;


            // # of days so far in the solar year
const s_daysToMonth365: number[] = [0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334];
    
const s_daysToMonth366: number[] = [0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335];







// Data for years 1901-1905 and 1907-2100 matches output of Calendrical Calculations [2] and published calendar tables [3].
// For 1906, month 4 of the Chinese year starts on 24 Apr 1906 and has 29 days.  This is historially accurate
// but different to the values in [1] and output from [2].  This is due to a change in the astronomical methods used
// by the Chinese to calculate the calendar from 1913 onwards (see warnings in [1]).
// [2] Reingold, Edward M, and Nachum Dershowitz. Calendrical Calculations: The Ultimate Edition. Cambridge [etc.: Cambridge University Press, 2018. Print.
// [3] Wang, Jianmin. Xin Bian Wan Nian Li: (1840-2050) Chong Bian Ben. Beijing: Ke xue pu ji chu ban she, 1990. Print.
// https://gist.githubusercontent.com/ststeiger/709354299a457e2d79b06d0127096fee/raw/fd087ee41ad4596f4bcea8f9dc62682c7bd2ee8d/GetChineseZodiac.cs
const s_yinfo: number[][] = [
    /*Y         LM  Lmon  Lday    DaysPerMonth               D1   D2   D3   D4   D5   D6   D7   D8   D9   D10  D11  D12  D13  #Days
    1901     */ [0, 2, 19, 0b0100101011100000], /*   29   30   29   29   30   29   30   29   30   30   30   29        354
    1902     */ [0, 2, 8, 0b1010010101110000], /*   30   29   30   29   29   30   29   30   29   30   30   30        355
    1903     */ [5, 1, 29, 0b0101001001101000], /*   29   30   29   30   29   29   30   29   29   30   30   29   30   383
    1904     */ [0, 2, 16, 0b1101001001100000], /*   30   30   29   30   29   29   30   29   29   30   30   29        354
    1905     */ [0, 2, 4, 0b1101100101010000], /*   30   30   29   30   30   29   29   30   29   30   29   30        355
    1906     */ [4, 1, 25, 0b0110101010101000], /*   29   30   30   29   30   29   30   29   30   29   30   29   30   384
    1907     */ [0, 2, 13, 0b0101011010100000], /*   29   30   29   30   29   30   30   29   30   29   30   29        354
    1908     */ [0, 2, 2, 0b1001101011010000], /*   30   29   29   30   30   29   30   29   30   30   29   30        355
    1909     */ [2, 1, 22, 0b0100101011101000], /*   29   30   29   29   30   29   30   29   30   30   30   29   30   384
    1910     */ [0, 2, 10, 0b0100101011100000], /*   29   30   29   29   30   29   30   29   30   30   30   29        354
    1911     */ [6, 1, 30, 0b1010010011011000], /*   30   29   30   29   29   30   29   29   30   30   29   30   30   384
    1912     */ [0, 2, 18, 0b1010010011010000], /*   30   29   30   29   29   30   29   29   30   30   29   30        354
    1913     */ [0, 2, 6, 0b1101001001010000], /*   30   30   29   30   29   29   30   29   29   30   29   30        354
    1914     */ [5, 1, 26, 0b1101010100101000], /*   30   30   29   30   29   30   29   30   29   29   30   29   30   384
    1915     */ [0, 2, 14, 0b1011010101000000], /*   30   29   30   30   29   30   29   30   29   30   29   29        354
    1916     */ [0, 2, 3, 0b1101011010100000], /*   30   30   29   30   29   30   30   29   30   29   30   29        355
    1917     */ [2, 1, 23, 0b1001011011010000], /*   30   29   29   30   29   30   30   29   30   30   29   30   29   384
    1918     */ [0, 2, 11, 0b1001010110110000], /*   30   29   29   30   29   30   29   30   30   29   30   30        355
    1919     */ [7, 2, 1, 0b0100100110111000], /*   29   30   29   29   30   29   29   30   30   29   30   30   30   384
    1920     */ [0, 2, 20, 0b0100100101110000], /*   29   30   29   29   30   29   29   30   29   30   30   30        354
    1921     */ [0, 2, 8, 0b1010010010110000], /*   30   29   30   29   29   30   29   29   30   29   30   30        354
    1922     */ [5, 1, 28, 0b1011001001011000], /*   30   29   30   30   29   29   30   29   29   30   29   30   30   384
    1923     */ [0, 2, 16, 0b0110101001010000], /*   29   30   30   29   30   29   30   29   29   30   29   30        354
    1924     */ [0, 2, 5, 0b0110110101000000], /*   29   30   30   29   30   30   29   30   29   30   29   29        354
    1925     */ [4, 1, 24, 0b1010110110101000], /*   30   29   30   29   30   30   29   30   30   29   30   29   30   385
    1926     */ [0, 2, 13, 0b0010101101100000], /*   29   29   30   29   30   29   30   30   29   30   30   29        354
    1927     */ [0, 2, 2, 0b1001010101110000], /*   30   29   29   30   29   30   29   30   29   30   30   30        355
    1928     */ [2, 1, 23, 0b0100100101111000], /*   29   30   29   29   30   29   29   30   29   30   30   30   30   384
    1929     */ [0, 2, 10, 0b0100100101110000], /*   29   30   29   29   30   29   29   30   29   30   30   30        354
    1930     */ [6, 1, 30, 0b0110010010110000], /*   29   30   30   29   29   30   29   29   30   29   30   30   29   383
    1931     */ [0, 2, 17, 0b1101010010100000], /*   30   30   29   30   29   30   29   29   30   29   30   29        354
    1932     */ [0, 2, 6, 0b1110101001010000], /*   30   30   30   29   30   29   30   29   29   30   29   30        355
    1933     */ [5, 1, 26, 0b0110110101001000], /*   29   30   30   29   30   30   29   30   29   30   29   29   30   384
    1934     */ [0, 2, 14, 0b0101101011010000], /*   29   30   29   30   30   29   30   29   30   30   29   30        355
    1935     */ [0, 2, 4, 0b0010101101100000], /*   29   29   30   29   30   29   30   30   29   30   30   29        354
    1936     */ [3, 1, 24, 0b1001001101110000], /*   30   29   29   30   29   29   30   30   29   30   30   30   29   384
    1937     */ [0, 2, 11, 0b1001001011100000], /*   30   29   29   30   29   29   30   29   30   30   30   29        354
    1938     */ [7, 1, 31, 0b1100100101101000], /*   30   30   29   29   30   29   29   30   29   30   30   29   30   384
    1939     */ [0, 2, 19, 0b1100100101010000], /*   30   30   29   29   30   29   29   30   29   30   29   30        354
    1940     */ [0, 2, 8, 0b1101010010100000], /*   30   30   29   30   29   30   29   29   30   29   30   29        354
    1941     */ [6, 1, 27, 0b1101101001010000], /*   30   30   29   30   30   29   30   29   29   30   29   30   29   384
    1942     */ [0, 2, 15, 0b1011010101010000], /*   30   29   30   30   29   30   29   30   29   30   29   30        355
    1943     */ [0, 2, 5, 0b0101011010100000], /*   29   30   29   30   29   30   30   29   30   29   30   29        354
    1944     */ [4, 1, 25, 0b1010101011011000], /*   30   29   30   29   30   29   30   29   30   30   29   30   30   385
    1945     */ [0, 2, 13, 0b0010010111010000], /*   29   29   30   29   29   30   29   30   30   30   29   30        354
    1946     */ [0, 2, 2, 0b1001001011010000], /*   30   29   29   30   29   29   30   29   30   30   29   30        354
    1947     */ [2, 1, 22, 0b1100100101011000], /*   30   30   29   29   30   29   29   30   29   30   29   30   30   384
    1948     */ [0, 2, 10, 0b1010100101010000], /*   30   29   30   29   30   29   29   30   29   30   29   30        354
    1949     */ [7, 1, 29, 0b1011010010101000], /*   30   29   30   30   29   30   29   29   30   29   30   29   30   384
    1950     */ [0, 2, 17, 0b0110110010100000], /*   29   30   30   29   30   30   29   29   30   29   30   29        354
    1951     */ [0, 2, 6, 0b1011010101010000], /*   30   29   30   30   29   30   29   30   29   30   29   30        355
    1952     */ [5, 1, 27, 0b0101010110101000], /*   29   30   29   30   29   30   29   30   30   29   30   29   30   384
    1953     */ [0, 2, 14, 0b0100110110100000], /*   29   30   29   29   30   30   29   30   30   29   30   29        354
    1954     */ [0, 2, 3, 0b1010010110110000], /*   30   29   30   29   29   30   29   30   30   29   30   30        355
    1955     */ [3, 1, 24, 0b0101001010111000], /*   29   30   29   30   29   29   30   29   30   29   30   30   30   384
    1956     */ [0, 2, 12, 0b0101001010110000], /*   29   30   29   30   29   29   30   29   30   29   30   30        354
    1957     */ [8, 1, 31, 0b1010100101010000], /*   30   29   30   29   30   29   29   30   29   30   29   30   29   383
    1958     */ [0, 2, 18, 0b1110100101010000], /*   30   30   30   29   30   29   29   30   29   30   29   30        355
    1959     */ [0, 2, 8, 0b0110101010100000], /*   29   30   30   29   30   29   30   29   30   29   30   29        354
    1960     */ [6, 1, 28, 0b1010110101010000], /*   30   29   30   29   30   30   29   30   29   30   29   30   29   384
    1961     */ [0, 2, 15, 0b1010101101010000], /*   30   29   30   29   30   29   30   30   29   30   29   30        355
    1962     */ [0, 2, 5, 0b0100101101100000], /*   29   30   29   29   30   29   30   30   29   30   30   29        354
    1963     */ [4, 1, 25, 0b1010010101110000], /*   30   29   30   29   29   30   29   30   29   30   30   30   29   384
    1964     */ [0, 2, 13, 0b1010010101110000], /*   30   29   30   29   29   30   29   30   29   30   30   30        355
    1965     */ [0, 2, 2, 0b0101001001100000], /*   29   30   29   30   29   29   30   29   29   30   30   29        353
    1966     */ [3, 1, 21, 0b1110100100110000], /*   30   30   30   29   30   29   29   30   29   29   30   30   29   384
    1967     */ [0, 2, 9, 0b1101100101010000], /*   30   30   29   30   30   29   29   30   29   30   29   30        355
    1968     */ [7, 1, 30, 0b0101101010101000], /*   29   30   29   30   30   29   30   29   30   29   30   29   30   384
    1969     */ [0, 2, 17, 0b0101011010100000], /*   29   30   29   30   29   30   30   29   30   29   30   29        354
    1970     */ [0, 2, 6, 0b1001011011010000], /*   30   29   29   30   29   30   30   29   30   30   29   30        355
    1971     */ [5, 1, 27, 0b0100101011101000], /*   29   30   29   29   30   29   30   29   30   30   30   29   30   384
    1972     */ [0, 2, 15, 0b0100101011010000], /*   29   30   29   29   30   29   30   29   30   30   29   30        354
    1973     */ [0, 2, 3, 0b1010010011010000], /*   30   29   30   29   29   30   29   29   30   30   29   30        354
    1974     */ [4, 1, 23, 0b1101001001101000], /*   30   30   29   30   29   29   30   29   29   30   30   29   30   384
    1975     */ [0, 2, 11, 0b1101001001010000], /*   30   30   29   30   29   29   30   29   29   30   29   30        354
    1976     */ [8, 1, 31, 0b1101010100101000], /*   30   30   29   30   29   30   29   30   29   29   30   29   30   384
    1977     */ [0, 2, 18, 0b1011010101000000], /*   30   29   30   30   29   30   29   30   29   30   29   29        354
    1978     */ [0, 2, 7, 0b1011011010100000], /*   30   29   30   30   29   30   30   29   30   29   30   29        355
    1979     */ [6, 1, 28, 0b1001011011010000], /*   30   29   29   30   29   30   30   29   30   30   29   30   29   384
    1980     */ [0, 2, 16, 0b1001010110110000], /*   30   29   29   30   29   30   29   30   30   29   30   30        355
    1981     */ [0, 2, 5, 0b0100100110110000], /*   29   30   29   29   30   29   29   30   30   29   30   30        354
    1982     */ [4, 1, 25, 0b1010010010111000], /*   30   29   30   29   29   30   29   29   30   29   30   30   30   384
    1983     */ [0, 2, 13, 0b1010010010110000], /*   30   29   30   29   29   30   29   29   30   29   30   30        354
    1984     */ [10, 2, 2, 0b1011001001011000], /*   30   29   30   30   29   29   30   29   29   30   29   30   30   384
    1985     */ [0, 2, 20, 0b0110101001010000], /*   29   30   30   29   30   29   30   29   29   30   29   30        354
    1986     */ [0, 2, 9, 0b0110110101000000], /*   29   30   30   29   30   30   29   30   29   30   29   29        354
    1987     */ [6, 1, 29, 0b1010110110100000], /*   30   29   30   29   30   30   29   30   30   29   30   29   29   384
    1988     */ [0, 2, 17, 0b1010101101100000], /*   30   29   30   29   30   29   30   30   29   30   30   29        355
    1989     */ [0, 2, 6, 0b1001010101110000], /*   30   29   29   30   29   30   29   30   29   30   30   30        355
    1990     */ [5, 1, 27, 0b0100100101111000], /*   29   30   29   29   30   29   29   30   29   30   30   30   30   384
    1991     */ [0, 2, 15, 0b0100100101110000], /*   29   30   29   29   30   29   29   30   29   30   30   30        354
    1992     */ [0, 2, 4, 0b0110010010110000], /*   29   30   30   29   29   30   29   29   30   29   30   30        354
    1993     */ [3, 1, 23, 0b0110101001010000], /*   29   30   30   29   30   29   30   29   29   30   29   30   29   383
    1994     */ [0, 2, 10, 0b1110101001010000], /*   30   30   30   29   30   29   30   29   29   30   29   30        355
    1995     */ [8, 1, 31, 0b0110101100101000], /*   29   30   30   29   30   29   30   30   29   29   30   29   30   384
    1996     */ [0, 2, 19, 0b0101101011000000], /*   29   30   29   30   30   29   30   29   30   30   29   29        354
    1997     */ [0, 2, 7, 0b1010101101100000], /*   30   29   30   29   30   29   30   30   29   30   30   29        355
    1998     */ [5, 1, 28, 0b1001001101101000], /*   30   29   29   30   29   29   30   30   29   30   30   29   30   384
    1999     */ [0, 2, 16, 0b1001001011100000], /*   30   29   29   30   29   29   30   29   30   30   30   29        354
    2000     */ [0, 2, 5, 0b1100100101100000], /*   30   30   29   29   30   29   29   30   29   30   30   29        354
    2001     */ [4, 1, 24, 0b1101010010101000], /*   30   30   29   30   29   30   29   29   30   29   30   29   30   384
    2002     */ [0, 2, 12, 0b1101010010100000], /*   30   30   29   30   29   30   29   29   30   29   30   29        354
    2003     */ [0, 2, 1, 0b1101101001010000], /*   30   30   29   30   30   29   30   29   29   30   29   30        355
    2004     */ [2, 1, 22, 0b0101101010101000], /*   29   30   29   30   30   29   30   29   30   29   30   29   30   384
    2005     */ [0, 2, 9, 0b0101011010100000], /*   29   30   29   30   29   30   30   29   30   29   30   29        354
    2006     */ [7, 1, 29, 0b1010101011011000], /*   30   29   30   29   30   29   30   29   30   30   29   30   30   385
    2007     */ [0, 2, 18, 0b0010010111010000], /*   29   29   30   29   29   30   29   30   30   30   29   30        354
    2008     */ [0, 2, 7, 0b1001001011010000], /*   30   29   29   30   29   29   30   29   30   30   29   30        354
    2009     */ [5, 1, 26, 0b1100100101011000], /*   30   30   29   29   30   29   29   30   29   30   29   30   30   384
    2010     */ [0, 2, 14, 0b1010100101010000], /*   30   29   30   29   30   29   29   30   29   30   29   30        354
    2011     */ [0, 2, 3, 0b1011010010100000], /*   30   29   30   30   29   30   29   29   30   29   30   29        354
    2012     */ [4, 1, 23, 0b1011010101010000], /*   30   29   30   30   29   30   29   30   29   30   29   30   29   384
    2013     */ [0, 2, 10, 0b1010110101010000], /*   30   29   30   29   30   30   29   30   29   30   29   30        355
    2014     */ [9, 1, 31, 0b0101010110101000], /*   29   30   29   30   29   30   29   30   30   29   30   29   30   384
    2015     */ [0, 2, 19, 0b0100101110100000], /*   29   30   29   29   30   29   30   30   30   29   30   29        354
    2016     */ [0, 2, 8, 0b1010010110110000], /*   30   29   30   29   29   30   29   30   30   29   30   30        355
    2017     */ [6, 1, 28, 0b0101001010111000], /*   29   30   29   30   29   29   30   29   30   29   30   30   30   384
    2018     */ [0, 2, 16, 0b0101001010110000], /*   29   30   29   30   29   29   30   29   30   29   30   30        354
    2019     */ [0, 2, 5, 0b1010100100110000], /*   30   29   30   29   30   29   29   30   29   29   30   30        354
    2020     */ [4, 1, 25, 0b0111010010101000], /*   29   30   30   30   29   30   29   29   30   29   30   29   30   384
    2021     */ [0, 2, 12, 0b0110101010100000], /*   29   30   30   29   30   29   30   29   30   29   30   29        354
    2022     */ [0, 2, 1, 0b1010110101010000], /*   30   29   30   29   30   30   29   30   29   30   29   30        355
    2023     */ [2, 1, 22, 0b0100110110101000], /*   29   30   29   29   30   30   29   30   30   29   30   29   30   384
    2024     */ [0, 2, 10, 0b0100101101100000], /*   29   30   29   29   30   29   30   30   29   30   30   29        354
    2025     */ [6, 1, 29, 0b1010010101110000], /*   30   29   30   29   29   30   29   30   29   30   30   30   29   384
    2026     */ [0, 2, 17, 0b1010010011100000], /*   30   29   30   29   29   30   29   29   30   30   30   29        354
    2027     */ [0, 2, 6, 0b1101001001100000], /*   30   30   29   30   29   29   30   29   29   30   30   29        354
    2028     */ [5, 1, 26, 0b1110100100110000], /*   30   30   30   29   30   29   29   30   29   29   30   30   29   384
    2029     */ [0, 2, 13, 0b1101010100110000], /*   30   30   29   30   29   30   29   30   29   29   30   30        355
    2030     */ [0, 2, 3, 0b0101101010100000], /*   29   30   29   30   30   29   30   29   30   29   30   29        354
    2031     */ [3, 1, 23, 0b0110101101010000], /*   29   30   30   29   30   29   30   30   29   30   29   30   29   384
    2032     */ [0, 2, 11, 0b1001011011010000], /*   30   29   29   30   29   30   30   29   30   30   29   30        355
    2033     */ [11, 1, 31, 0b0100101011101000], /*   29   30   29   29   30   29   30   29   30   30   30   29   30   384
    2034     */ [0, 2, 19, 0b0100101011010000], /*   29   30   29   29   30   29   30   29   30   30   29   30        354
    2035     */ [0, 2, 8, 0b1010010011010000], /*   30   29   30   29   29   30   29   29   30   30   29   30        354
    2036     */ [6, 1, 28, 0b1101001001011000], /*   30   30   29   30   29   29   30   29   29   30   29   30   30   384
    2037     */ [0, 2, 15, 0b1101001001010000], /*   30   30   29   30   29   29   30   29   29   30   29   30        354
    2038     */ [0, 2, 4, 0b1101010100100000], /*   30   30   29   30   29   30   29   30   29   29   30   29        354
    2039     */ [5, 1, 24, 0b1101101010100000], /*   30   30   29   30   30   29   30   29   30   29   30   29   29   384
    2040     */ [0, 2, 12, 0b1011010110100000], /*   30   29   30   30   29   30   29   30   30   29   30   29        355
    2041     */ [0, 2, 1, 0b0101011011010000], /*   29   30   29   30   29   30   30   29   30   30   29   30        355
    2042     */ [2, 1, 22, 0b0100101011011000], /*   29   30   29   29   30   29   30   29   30   30   29   30   30   384
    2043     */ [0, 2, 10, 0b0100100110110000], /*   29   30   29   29   30   29   29   30   30   29   30   30        354
    2044     */ [7, 1, 30, 0b1010010010111000], /*   30   29   30   29   29   30   29   29   30   29   30   30   30   384
    2045     */ [0, 2, 17, 0b1010010010110000], /*   30   29   30   29   29   30   29   29   30   29   30   30        354
    2046     */ [0, 2, 6, 0b1010101001010000], /*   30   29   30   29   30   29   30   29   29   30   29   30        354
    2047     */ [5, 1, 26, 0b1011010100101000], /*   30   29   30   30   29   30   29   30   29   29   30   29   30   384
    2048     */ [0, 2, 14, 0b0110110100100000], /*   29   30   30   29   30   30   29   30   29   29   30   29        354
    2049     */ [0, 2, 2, 0b1010110110100000], /*   30   29   30   29   30   30   29   30   30   29   30   29        355
    2050     */ [3, 1, 23, 0b0101010110110000], /*   29   30   29   30   29   30   29   30   30   29   30   30   29   384
    2051     */ [0, 2, 11, 0b1001001101110000], /*   30   29   29   30   29   29   30   30   29   30   30   30        355
    2052     */ [8, 2, 1, 0b0100100101111000], /*   29   30   29   29   30   29   29   30   29   30   30   30   30   384
    2053     */ [0, 2, 19, 0b0100100101110000], /*   29   30   29   29   30   29   29   30   29   30   30   30        354
    2054     */ [0, 2, 8, 0b0110010010110000], /*   29   30   30   29   29   30   29   29   30   29   30   30        354
    2055     */ [6, 1, 28, 0b0110101001010000], /*   29   30   30   29   30   29   30   29   29   30   29   30   29   383
    2056     */ [0, 2, 15, 0b1110101001010000], /*   30   30   30   29   30   29   30   29   29   30   29   30        355
    2057     */ [0, 2, 4, 0b0110101010100000], /*   29   30   30   29   30   29   30   29   30   29   30   29        354
    2058     */ [4, 1, 24, 0b1010101101100000], /*   30   29   30   29   30   29   30   30   29   30   30   29   29   384
    2059     */ [0, 2, 12, 0b1010101011100000], /*   30   29   30   29   30   29   30   29   30   30   30   29        355
    2060     */ [0, 2, 2, 0b1001001011100000], /*   30   29   29   30   29   29   30   29   30   30   30   29        354
    2061     */ [3, 1, 21, 0b1100100101110000], /*   30   30   29   29   30   29   29   30   29   30   30   30   29   384
    2062     */ [0, 2, 9, 0b1100100101100000], /*   30   30   29   29   30   29   29   30   29   30   30   29        354
    2063     */ [7, 1, 29, 0b1101010010101000], /*   30   30   29   30   29   30   29   29   30   29   30   29   30   384
    2064     */ [0, 2, 17, 0b1101010010100000], /*   30   30   29   30   29   30   29   29   30   29   30   29        354
    2065     */ [0, 2, 5, 0b1101101001010000], /*   30   30   29   30   30   29   30   29   29   30   29   30        355
    2066     */ [5, 1, 26, 0b0101101010101000], /*   29   30   29   30   30   29   30   29   30   29   30   29   30   384
    2067     */ [0, 2, 14, 0b0101011010100000], /*   29   30   29   30   29   30   30   29   30   29   30   29        354
    2068     */ [0, 2, 3, 0b1010011011010000], /*   30   29   30   29   29   30   30   29   30   30   29   30        355
    2069     */ [4, 1, 23, 0b0101001011101000], /*   29   30   29   30   29   29   30   29   30   30   30   29   30   384
    2070     */ [0, 2, 11, 0b0101001011010000], /*   29   30   29   30   29   29   30   29   30   30   29   30        354
    2071     */ [8, 1, 31, 0b1010100101011000], /*   30   29   30   29   30   29   29   30   29   30   29   30   30   384
    2072     */ [0, 2, 19, 0b1010100101010000], /*   30   29   30   29   30   29   29   30   29   30   29   30        354
    2073     */ [0, 2, 7, 0b1011010010100000], /*   30   29   30   30   29   30   29   29   30   29   30   29        354
    2074     */ [6, 1, 27, 0b1011010101010000], /*   30   29   30   30   29   30   29   30   29   30   29   30   29   384
    2075     */ [0, 2, 15, 0b1010110101010000], /*   30   29   30   29   30   30   29   30   29   30   29   30        355
    2076     */ [0, 2, 5, 0b0101010110100000], /*   29   30   29   30   29   30   29   30   30   29   30   29        354
    2077     */ [4, 1, 24, 0b1010010111010000], /*   30   29   30   29   29   30   29   30   30   30   29   30   29   384
    2078     */ [0, 2, 12, 0b1010010110110000], /*   30   29   30   29   29   30   29   30   30   29   30   30        355
    2079     */ [0, 2, 2, 0b0101001010110000], /*   29   30   29   30   29   29   30   29   30   29   30   30        354
    2080     */ [3, 1, 22, 0b1010100100111000], /*   30   29   30   29   30   29   29   30   29   29   30   30   30   384
    2081     */ [0, 2, 9, 0b0110100100110000], /*   29   30   30   29   30   29   29   30   29   29   30   30        354
    2082     */ [7, 1, 29, 0b0111001010011000], /*   29   30   30   30   29   29   30   29   30   29   29   30   30   384
    2083     */ [0, 2, 17, 0b0110101010100000], /*   29   30   30   29   30   29   30   29   30   29   30   29        354
    2084     */ [0, 2, 6, 0b1010110101010000], /*   30   29   30   29   30   30   29   30   29   30   29   30        355
    2085     */ [5, 1, 26, 0b0100110110101000], /*   29   30   29   29   30   30   29   30   30   29   30   29   30   384
    2086     */ [0, 2, 14, 0b0100101101100000], /*   29   30   29   29   30   29   30   30   29   30   30   29        354
    2087     */ [0, 2, 3, 0b1010010101110000], /*   30   29   30   29   29   30   29   30   29   30   30   30        355
    2088     */ [4, 1, 24, 0b0101001001110000], /*   29   30   29   30   29   29   30   29   29   30   30   30   29   383
    2089     */ [0, 2, 10, 0b1101000101100000], /*   30   30   29   30   29   29   29   30   29   30   30   29        354
    2090     */ [8, 1, 30, 0b1110100100110000], /*   30   30   30   29   30   29   29   30   29   29   30   30   29   384
    2091     */ [0, 2, 18, 0b1101010100100000], /*   30   30   29   30   29   30   29   30   29   29   30   29        354
    2092     */ [0, 2, 7, 0b1101101010100000], /*   30   30   29   30   30   29   30   29   30   29   30   29        355
    2093     */ [6, 1, 27, 0b0110101101010000], /*   29   30   30   29   30   29   30   30   29   30   29   30   29   384
    2094     */ [0, 2, 15, 0b0101011011010000], /*   29   30   29   30   29   30   30   29   30   30   29   30        355
    2095     */ [0, 2, 5, 0b0100101011100000], /*   29   30   29   29   30   29   30   29   30   30   30   29        354
    2096     */ [4, 1, 25, 0b1010010011101000], /*   30   29   30   29   29   30   29   29   30   30   30   29   30   384
    2097     */ [0, 2, 12, 0b1010001011010000], /*   30   29   30   29   29   29   30   29   30   30   29   30        354
    2098     */ [0, 2, 1, 0b1101000101010000], /*   30   30   29   30   29   29   29   30   29   30   29   30        354
    2099     */ [2, 1, 21, 0b1101100100101000], /*   30   30   29   30   30   29   29   30   29   29   30   29   30   384
    2100     */ [0, 2, 9, 0b1101010100100000], /*   30   30   29   30   29   30   29   30   29   29   30   29        354
             */ ];




// Binary Literals !!! 
//function binaryLiterals()
//{
//    // https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/proposals/csharp-7.0/binary-literals
//    // https://stackoverflow.com/questions/2803145/is-there-0b-or-something-similar-to-represent-a-binary-number-in-javascript#:~:text=No%2C%20there%20isn't%20an,octal%20(prefix%200%20)%20formats.
//    let bar = 0b01;
//    let foo = 0b0100101011100000;

//    let a = [0, 2, 19, 0b0100101011100000];
//}





function GregorianIsLeapYear(y: number): boolean
{
    if ((y % 4) != 0)
    {
        return false;
    }
    if ((y % 100) != 0)
    {
        return true;
    }

    return (y % 400) == 0;
}



//// Just for comparison - less compact
//function IsLeapYear(year: number): boolean
//{
//    if (year % 400 == 0)
//        return true;

//    if (year % 100 == 0)
//        return false;

//    if (year % 4 == 0)
//        return true;

//    return false;
//} // End Function IsLeapYear


            
function GetYearInfo(lunarYear: number, index: number): number
{
    if (lunarYear < MinLunisolarYear || lunarYear > MaxLunisolarYear)
    {
        // throw new System.ArgumentOutOfRangeException("year", lunarYear, SR.Format(SR.ArgumentOutOfRange_Range, MinLunisolarYear, MaxLunisolarYear));
        throw new Error("year");
    }

    return s_yinfo[lunarYear - MinLunisolarYear][index];
}


function CheckTicksRange(ticks: number): void
{
    if (ticks < MinValue.Ticks || ticks > MaxValue.Ticks)
    {
        throw new Error("time");
        // throw new System.ArgumentOutOfRangeException("time", ticks, SR.Format(SR.ArgumentOutOfRange_CalendarRange, MinValue, MaxValue));
    }
}



// let DaysToMonth365:number[] = [ 0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334, 365];
// let DaysToMonth366: number[] = [0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335, 366];

function GetGregorianDaysInMonth(year: number, month: number): number
{
    if (month < 1 || month > 12)
        throw new Error("Argument 'month' out of range");

    let even = ((month % 2) === 0);

    if (month > 7)
        return (even ? 31 : 30);

    if (month === 2)
    {
        return ((year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)) ? 29 : 28);
    }

    return (even ? 30 : 31);
}



/// <summary>
/// Calculates lunar calendar info for the given gregorian year, month, date.
/// The input date should be validated before calling this method.
/// </summary>
function GregorianToLunar(solarYear: number, solarMonth: number, solarDate: number)
{
    // , out lunarYear: number, out lunarMonth: number, out lunarDate: number
    let outData = { lunarYear: 0, lunarMonth: 0, lunarDate: 0 };


    let isLeapYear: boolean = GregorianIsLeapYear(solarYear);
    let jan1Month: number;
    let jan1Date: number;



    // Calculate the day number in the solar year.
    let solarDay: number = isLeapYear ? s_daysToMonth366[solarMonth - 1] : s_daysToMonth365[solarMonth - 1];
    solarDay += solarDate;

    // Calculate the day number in the lunar year.
    let lunarDay: number = solarDay;
    outData.lunarYear = solarYear;
    if (outData.lunarYear == (MaxLunisolarYear + 1))
    {

        outData.lunarYear--;
        lunarDay += (GregorianIsLeapYear(outData.lunarYear) ? 366 : 365);
        jan1Month = GetYearInfo(outData.lunarYear, Jan1Month);
        jan1Date = GetYearInfo(outData.lunarYear, Jan1Date);
    }
    else
    {
        jan1Month = GetYearInfo(outData.lunarYear, Jan1Month);
        jan1Date = GetYearInfo(outData.lunarYear, Jan1Date);

        // check if this solar date is actually part of the previous
        // lunar year
        if ((solarMonth < jan1Month) ||
            (solarMonth == jan1Month && solarDate < jan1Date))
        {
            // the corresponding lunar day is actually part of the previous
            // lunar year
            outData.lunarYear--;

            // add a solar year to the lunar day #
            lunarDay += (GregorianIsLeapYear(outData.lunarYear) ? 366 : 365);

            // update the new start of year
            jan1Month = GetYearInfo(outData.lunarYear, Jan1Month);
            jan1Date = GetYearInfo(outData.lunarYear, Jan1Date);
        }
    }

    // convert solar day into lunar day.
    // subtract off the beginning part of the solar year which is not
    // part of the lunar year.  since this part is always in Jan or Feb,
    // we don't need to handle Leap Year (LY only affects March
    // and later).
    lunarDay -= s_daysToMonth365[jan1Month - 1];
    lunarDay -= (jan1Date - 1);

    // convert the lunar day into a lunar month/date
    let mask: number = 0x8000;
    let yearInfo: number = GetYearInfo(outData.lunarYear, nDaysPerMonth);
    let days: number = ((yearInfo & mask) != 0) ? 30 : 29;
    outData.lunarMonth = 1;
    while (lunarDay > days)
    {
        lunarDay -= days;
        outData.lunarMonth++;
        mask >>= 1;
        days = ((yearInfo & mask) != 0) ? 30 : 29;
    }
    outData.lunarDate = lunarDay;

    return outData;
}


function TimeToLunar(time: DotNetDateTime)
{
    // let x = { year: 0, month: 0, day: 0 };

    // System.Globalization.Calendar gregorianCalendar = System.Globalization.GregorianCalendar.GetDefaultInstance();
    let gregorianCalendar: GregorianCalendar = new GregorianCalendar();

    let gy: number = gregorianCalendar.GetYear(time);
    let gm: number = gregorianCalendar.GetMonth(time);
    let gd: number = gregorianCalendar.GetDayOfMonth(time);

    let ad = GregorianToLunar(gy, gm, gd);

    return {
        year: ad.lunarYear
    };
}

            
function GetSexagenaryYear(time: DotNetDateTime): number
{
    CheckTicksRange(time.Ticks);

    let x = TimeToLunar(time);
    return ((x.year - 4) % 60) + 1;
}



/// <summary>
/// Return the Terrestial Branch from the 60-year cycle.
/// The returned value is from 1 ~ 12.
/// </summary>
function GetTerrestrialBranch(sexagenaryYear: number): number
{
    if (sexagenaryYear < 1 || sexagenaryYear > 60)
    {
        throw new Error("sexagenaryYear");
        //throw new System.ArgumentOutOfRangeException( nameof(sexagenaryYear), sexagenaryYear, SR.Format(SR.ArgumentOutOfRange_Range, 1, 60));
    }

    return ((sexagenaryYear - 1) % 12) + 1;
}




            
export function ChineseZodiac(date:Date):string
{
    let dotNetDate: DotNetDateTime = DotNetDateTime.fromJsDate(date);
    let sexagenaryYear: number = GetSexagenaryYear(dotNetDate);
    let terrestrialBranch: number = GetTerrestrialBranch(sexagenaryYear);

    // let years: string[] = "rat,ox,tiger,hare,dragon,snake,horse,sheep,monkey,fowl,dog,pig".split(',');
    // let years: string[] = "Rat,Ox,Tiger,Rabbit,Dragon,Snake,Horse,Goat,Monkey,Rooster,Dog,Pig".split(',');
    // let years: string[] = ["rat", "ox", "tiger", "hare", "dragon", "snake", "horse", "sheep", "monkey", "fowl", "dog", "pig" ];
    let years: string[] = ["Rat", "Ox", "Tiger", "Rabbit", "Dragon", "Snake", "Horse", "Goat", "Monkey", "Rooster", "Dog", "Pig"];

    return years[terrestrialBranch - 1];
} // End Function ChineseZodiac
