
namespace TestPWA
{


    public static class SimpleCsvEncoder
    {


        private static string EscapeIfNecessary(string cellData, char delimiter, char qualifier)
        {

            if (cellData.IndexOf(delimiter) != -1 || cellData.IndexOf("\n") != -1)
                cellData = qualifier + cellData.Replace(qualifier
                    .ToString(System.Globalization.CultureInfo.InvariantCulture)
                    , new string(qualifier, 2)) + qualifier;

            return cellData;
        }


        public static async System.Threading.Tasks.Task EncodeCSVAsync(
           System.Collections.Generic.IEnumerable<System.Collections.Generic.IEnumerable<string>> csvData,
           char delimiter,
           char qualifier,
           System.IO.TextWriter tw)
        {

            foreach(System.Collections.Generic.IEnumerable<string> row in csvData)
            {
                bool isFirst = true;

                // System.Console.WriteLine(row);
                foreach (string column in row)
                {
                    if (!isFirst)
                    {
                        await tw.WriteAsync(delimiter);
                        isFirst = false;
                    }

                    // System.Console.WriteLine(column);
                    string cellData = EscapeIfNecessary(column, delimiter, qualifier);
                    await tw.WriteAsync(cellData);
                }

                await tw.WriteAsync("\r\n");
            }

        }




        public static async System.Threading.Tasks.Task EncodeCSVAsync(
           System.Collections.Generic.List<System.Collections.Generic.List<string>> csvData,
           char delimiter,
           char qualifier,
           System.IO.TextWriter tw)
        {
            for (int row = 0; row < csvData.Count; ++row)
            {
                // System.Console.WriteLine(csvData[row]);
                for (int column = 0; column < csvData[row].Count; ++column)
                {
                    // System.Console.WriteLine(csvData[row][column]);
                    string cellData = csvData[row][column];
                    cellData = EscapeIfNecessary(cellData, delimiter, qualifier);
                    await tw.WriteAsync(cellData);

                    if (csvData[row].Count - 1 > column)
                        await tw.WriteAsync(delimiter);
                }

                await tw.WriteAsync("\r\n");
            }

        }


        public static async System.Threading.Tasks.Task EncodeCSVAsync(
           System.Collections.Generic.List<System.Collections.Generic.List<string>> csvData,
           char delimiter,
           char qualifier,
           System.IO.Stream stream)
        {
            await using (System.IO.TextWriter tw = new System.IO.StreamWriter(stream, System.Text.Encoding.UTF8, 4096, true))
            {
                await EncodeCSVAsync(csvData, delimiter, qualifier, tw);
                await tw.FlushAsync();
            }
        }

        public static async System.Threading.Tasks.Task<string> EncodeCSVAsync(
           System.Collections.Generic.List<System.Collections.Generic.List<string>> csvData,
           char delimiter,
           char qualifier)
        {
            string ret = null;
            System.Text.StringBuilder sb = new System.Text.StringBuilder();

            using (System.IO.TextWriter tw = new System.IO.StringWriter(sb))
            {
                await EncodeCSVAsync(csvData, delimiter, qualifier, tw);
                await tw.FlushAsync();
                ret = sb.ToString();
            }

            return ret;
        }


        public static void EncodeCSV(
             System.Collections.Generic.IEnumerable<System.Collections.Generic.IEnumerable<string>> csvData,
             char delimiter,
             char qualifier,
             System.IO.TextWriter tw)
        {

            foreach (System.Collections.Generic.IEnumerable<string> row in csvData)
            {
                bool isFirst = true;

                // System.Console.WriteLine(row);
                foreach (string column in row)
                {
                    if (!isFirst)
                    {
                        tw.Write(delimiter);
                        isFirst = false;
                    }
                    
                    // System.Console.WriteLine(column);
                    string cellData = EscapeIfNecessary(column, delimiter, qualifier);
                    tw.Write(cellData);
                }

                tw.Write("\r\n");
            }

        }


        public static void EncodeCSV(
           System.Collections.Generic.List<System.Collections.Generic.List<string>> csvData,
           char delimiter,
           char qualifier,
           System.IO.TextWriter tw)
        {


            for (int row = 0; row < csvData.Count; ++row)
            {
                // System.Console.WriteLine(csvData[row]);
                for (int column = 0; column < csvData[row].Count; ++column)
                {
                    // System.Console.WriteLine(csvData[row][column]);
                    string cellData = csvData[row][column];
                    cellData = EscapeIfNecessary(cellData, delimiter, qualifier);
                    tw.Write(cellData);

                    if (csvData[row].Count - 1 > column)
                        tw.Write(delimiter);
                }

                tw.Write("\r\n");
            }

        }


        public static void EncodeCSV(
            System.Collections.Generic.List<System.Collections.Generic.List<string>> csvData,
            char delimiter,
            char qualifier,
            System.IO.Stream stream)
        {
            using (System.IO.TextWriter tw = new System.IO.StreamWriter(stream, System.Text.Encoding.UTF8, 4096, true))
            {
                EncodeCSV(csvData, delimiter, qualifier, tw);
                tw.Flush();
            }
        }



        public static string EncodeCSV(
            System.Collections.Generic.List<System.Collections.Generic.List<string>> csvData,
            char delimiter,
            char qualifier)
        {
            string ret = null;
            System.Text.StringBuilder sb = new System.Text.StringBuilder();

            using (System.IO.TextWriter tw = new System.IO.StringWriter(sb))
            {
                EncodeCSV(csvData, delimiter, qualifier, tw);
                tw.Flush();
                ret = sb.ToString();
            }

            return ret;
        }


        public static string EncodeCSV(
            System.Collections.Generic.List<System.Collections.Generic.List<string>> csvData)
        {
            return EncodeCSV(csvData, '\t', '"');
        }


    }


}
