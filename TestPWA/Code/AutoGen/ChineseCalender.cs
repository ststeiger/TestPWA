
namespace TestPWA
{

    // https://github.com/commenthol/date-chinese
    public class ChineseCalender 
    {


        // https://gist.github.com/ststeiger/709354299a457e2d79b06d0127096fee
        // string chineseZodiac = ChineseCalender.ChineseZodiac(System.DateTime.UtcNow); System.Console.WriteLine(dt);
        public string ChineseZodiac(System.DateTime date)
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
