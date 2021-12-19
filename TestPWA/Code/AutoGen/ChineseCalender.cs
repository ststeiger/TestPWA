
namespace TestPWA
{


    // https://github.com/commenthol/date-chinese
    public class ChineseCalender 
    {


        public static void TestTicks()
        {
            // Ticks:
            // The value of this property represents the number of 100-nanosecond intervals
            // that have elapsed since 12:00:00 midnight, January 1, 0001 in the Gregorian calendar,
            // There are 10,000 ticks in a millisecond(see TicksPerMillisecond)
            // and 10 million ticks in a second.
            // Nanosecond: 1e-9
            // 100 Nanosecond: 1e-7
            // Millisecond: 1e-3
            // 1e-3*1e-4
            System.DateTime dt = new System.DateTime(1970, 01, 01, 0, 0, 0, System.DateTimeKind.Utc);
            System.Console.WriteLine(dt.Ticks); // long:              621355968000000000
            System.DateTime dt2 = new System.DateTime(1970, 01, 02, 0, 0, 0, System.DateTimeKind.Utc); // 621356832000000000
            System.Console.WriteLine(dt.Ticks); // MAX_SAFE_INTEGER:    9007199254740991 = 2^53-1



            long baseTicks = 621355968000000000;
            long ticksPerDay = 864000000000;
            long b = baseTicks + 14 * ticksPerDay;

            System.DateTime dt15 = new System.DateTime(1970, 01, 15, 0, 0, 0, System.DateTimeKind.Utc);
            System.Console.WriteLine(dt15.Ticks);
            System.Console.WriteLine(b);



            // let jsTicks = new Date(Date.UTC(1970,0,15)).getTime(); // 1209600000
            System.Numerics.BigInteger biBaseTicks = new System.Numerics.BigInteger(621355968000000000);
            System.Numerics.BigInteger jsTicks = new System.Numerics.BigInteger(1209600000);
            System.Numerics.BigInteger tenK = new System.Numerics.BigInteger(10000);



            System.Numerics.BigInteger c = biBaseTicks + jsTicks * tenK;
            System.Console.WriteLine(c);

            // 24*60*60*1000*1000000/100 = 24*60*60*1000*10000 = 864000000000

            // string s = ChineseZodiac(new System.DateTime(1970, 1, 1, 0, 0, 0, 0, System.DateTimeKind.Utc));
            string s = ChineseZodiac(new System.DateTime(2022, 1, 1, 0, 0, 0, 0, System.DateTimeKind.Utc));
            System.Console.WriteLine(s);


        }


        // https://gist.github.com/ststeiger/709354299a457e2d79b06d0127096fee
        // string chineseZodiac = ChineseCalender.ChineseZodiac(System.DateTime.UtcNow); System.Console.WriteLine(dt);
        public static string ChineseZodiac(System.DateTime date)
        {
            System.Globalization.EastAsianLunisolarCalendar cc =
                  new System.Globalization.ChineseLunisolarCalendar();
            int sexagenaryYear = cc.GetSexagenaryYear(date);
            int terrestrialBranch = cc.GetTerrestrialBranch(sexagenaryYear);

            // string[] years = "rat,ox,tiger,hare,dragon,snake,horse,sheep,monkey,fowl,dog,pig".Split(',');
            // string[] years = "Rat,Ox,Tiger,Rabbit,Dragon,Snake,Horse,Goat,Monkey,Rooster,Dog,Pig".Split(',');
            // string[] years = new string[]{ "rat", "ox", "tiger", "hare", "dragon", "snake", "horse", "sheep", "monkey", "fowl", "dog", "pig" };    
            string[] years = new string[] { "Rat", "Ox", "Tiger", "Rabbit", "Dragon", "Snake", "Horse", "Goat", "Monkey", "Rooster", "Dog", "Pig" };

            return years[terrestrialBranch - 1];
        } // End Function ChineseZodiac


        // https://stackoverflow.com/questions/30719176/algorithm-to-find-the-gregorian-date-of-the-chinese-new-year-of-a-certain-gregor

        // System.DateTime dt = ChineseCalender.GetDateOfChineseNewYear(2022); System.Console.WriteLine(dt);
        public static System.DateTime GetDateOfChineseNewYear(int year)
        {
            System.Globalization.EastAsianLunisolarCalendar lunisolar = new System.Globalization.ChineseLunisolarCalendar();
            // Get Chinese New Year of current UTC date/time
            System.DateTime chineseNewYear = lunisolar.ToDateTime(year, 1, 1, 0, 0, 0, 0);

            // Convert back to Gregorian (you could just query properties of `chineseNewYear` directly,
            // but I prefer to use `GregorianCalendar` for consistency:
            // System.Globalization.GregorianCalendar gregorian = new System.Globalization.GregorianCalendar();
            // int year = gregorian.GetYear(chineseNewYear);
            // int month = gregorian.GetMonth(chineseNewYear);
            // int day = gregorian.GetDayOfMonth(chineseNewYear);

            return chineseNewYear;
        }


    } // End Class cc 

}
