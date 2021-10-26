
namespace TestPWA.Code.DB1
{


    public class DataTableConverter
        : System.Text.Json.Serialization.JsonConverter<System.Data.DataTable>
    {


        public override System.Data.DataTable Read(
            ref System.Text.Json.Utf8JsonReader reader,
            System.Type typeToConvert,
            System.Text.Json.JsonSerializerOptions options)
        {
            throw new System.NotImplementedException();
        }


        public override void Write(
            System.Text.Json.Utf8JsonWriter writer,
            System.Data.DataTable value,
            System.Text.Json.JsonSerializerOptions options)
        {
            writer.WriteStartArray();

            foreach (System.Data.DataRow row in value.Rows)
            {
                writer.WriteStartObject();
                foreach (System.Data.DataColumn column in row.Table.Columns)
                {
                    object columnValue = row[column];

                    // If necessary:
                    if (options.IgnoreNullValues)
                    {
                        // Do null checks on the values here and skip writing.
                    }

                    writer.WritePropertyName(column.ColumnName);
                    System.Text.Json.JsonSerializer.Serialize(writer, columnValue, options);
                }

                writer.WriteEndObject();
            }

            writer.WriteEndArray();
        } // End Sub Write 


    } // End Class DataTableConverter 


    public class DataSetConverter
        : System.Text.Json.Serialization.JsonConverter<System.Data.DataSet>
    {
        public override System.Data.DataSet Read(
            ref System.Text.Json.Utf8JsonReader reader,
            System.Type typeToConvert,
            System.Text.Json.JsonSerializerOptions options)
        {
            throw new System.NotImplementedException();
        }

        public override void Write(
            System.Text.Json.Utf8JsonWriter writer,
            System.Data.DataSet value,
            System.Text.Json.JsonSerializerOptions options)
        {
            writer.WriteStartObject();
            foreach (System.Data.DataTable table in value.Tables)
            {
                writer.WritePropertyName(table.TableName);
                System.Text.Json.JsonSerializer.Serialize(writer, table, options);
            }
            writer.WriteEndObject();
        }
    }


    public class TestMethod
    {


        private static void DataSet_Serialization_WithSystemTextJson()
        {
            System.Text.Json.JsonSerializerOptions options = new System.Text.Json.JsonSerializerOptions()
            {
                Converters = { new DataTableConverter(), new DataSetConverter() }
            };

            (System.Data.DataTable table, System.Data.DataSet dataSet) = GetDataSetAndTable();

            string jsonDataTable = System.Text.Json.JsonSerializer.Serialize(table, options);
            // [{"id":0,"item":"item 0"},{"id":1,"item":"item 1"}]
            System.Console.WriteLine(jsonDataTable);

            string jsonDataSet = System.Text.Json.JsonSerializer.Serialize(dataSet, options);
            // {"Table1":[{"id":0,"item":"item 0"},{"id":1,"item":"item 1"}]}
            System.Console.WriteLine(jsonDataSet);

            // Local function to create a sample DataTable and DataSet
            (System.Data.DataTable, System.Data.DataSet) GetDataSetAndTable()
            {
                dataSet = new System.Data.DataSet("dataSet");

                table = new System.Data.DataTable();
                System.Data.DataColumn idColumn = new System.Data.DataColumn("id", typeof(int))
                {
                    AutoIncrement = true
                };

                System.Data.DataColumn itemColumn = new System.Data.DataColumn("item");

                table.Columns.Add(idColumn);
                table.Columns.Add(itemColumn);

                dataSet.Tables.Add(table);

                for (int i = 0; i < 2; i++)
                {
                    System.Data.DataRow newRow = table.NewRow();
                    newRow["item"] = "item " + i;
                    table.Rows.Add(newRow);
                }

                dataSet.AcceptChanges();

                return (table, dataSet);
            }
        }


    }


}
