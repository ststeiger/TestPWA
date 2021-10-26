
// https://weblog.west-wind.com/posts/2008/sep/03/datatable-json-serialization-in-jsonnet-and-javascriptserializer

// https://github.com/ststeiger/CoreCms/blob/master/CoreCMS/AppCode/Serializer/DataTableSerializer.cs
// read: 
// https://github.com/ststeiger/ImportExportTableData/blob/master/ImportExportTableData/Experimental/DataTableConverter.cs

namespace TestPWA.Code.DB2
{


    public class DataRowConverter
        : System.Text.Json.Serialization.JsonConverter<System.Data.DataRow>
    {


        /// <summary>
        /// Determines whether this instance can convert the specified value type.
        /// </summary>
        public override bool CanConvert(System.Type objectType)
        {
            return typeof(System.Data.DataRow).IsAssignableFrom(objectType);
        }


        /// <summary>
        /// Reads the JSON representation of the object.
        /// </summary>
        public override System.Data.DataRow Read(ref System.Text.Json.Utf8JsonReader reader, System.Type typeToConvert, System.Text.Json.JsonSerializerOptions options)
        {
            throw new System.NotImplementedException();
        }


        public override void Write(System.Text.Json.Utf8JsonWriter writer, System.Data.DataRow row, System.Text.Json.JsonSerializerOptions options)
        {
            writer.WriteStartObject();
            foreach (System.Data.DataColumn column in row.Table.Columns)
            {
                writer.WritePropertyName(column.ColumnName);

                if (row[column] == System.DBNull.Value)
                    System.Text.Json.JsonSerializer.Serialize(writer, null, options);
                else
                    System.Text.Json.JsonSerializer.Serialize(writer, row[column], options);
            }
            writer.WriteEndObject();
        }
    }



    public class DataTableConverter
        : System.Text.Json.Serialization.JsonConverter<System.Data.DataTable>
    {


        /// <summary>
        /// Determines whether this instance can convert the specified value type.
        /// </summary>
        public override bool CanConvert(System.Type objectType)
        {
            return typeof(System.Data.DataTable).IsAssignableFrom(objectType);
        }

        /// <summary>
        /// Reads the JSON representation of the object.
        /// </summary>
        public override System.Data.DataTable Read(ref System.Text.Json.Utf8JsonReader reader, System.Type typeToConvert, System.Text.Json.JsonSerializerOptions options)
        {
            throw new System.NotImplementedException();
        }



        /// <summary>
        /// Writes the JSON representation of the object.
        /// </summary>
        public override void Write(System.Text.Json.Utf8JsonWriter writer, System.Data.DataTable table, System.Text.Json.JsonSerializerOptions options)
        {
            DataRowConverter converter = new DataRowConverter();

            writer.WriteStartObject();

            writer.WritePropertyName("Rows");
            writer.WriteStartArray();

            foreach (System.Data.DataRow row in table.Rows)
            {
                converter.Write(writer, row, options);
            }

            writer.WriteEndArray();
            writer.WriteEndObject();

            converter = null;
        }
    }


    public class DataSetConverter
        : System.Text.Json.Serialization.JsonConverter<System.Data.DataSet>
    {
        /// <summary>
        /// Determines whether this instance can convert the specified value type.
        /// </summary>
        public override bool CanConvert(System.Type objectType)
        {
            return typeof(System.Data.DataSet).IsAssignableFrom(objectType);
        }

        /// <summary>
        /// Reads the JSON representation of the object.
        /// </summary>
        public override System.Data.DataSet Read(ref System.Text.Json.Utf8JsonReader reader, System.Type typeToConvert, System.Text.Json.JsonSerializerOptions options)
        {
            throw new System.NotImplementedException();
        }



        public override void Write(System.Text.Json.Utf8JsonWriter writer, System.Data.DataSet dataSet, System.Text.Json.JsonSerializerOptions options)
        {
            DataTableConverter converter = new DataTableConverter();

            writer.WriteStartObject();

            writer.WritePropertyName("Tables");
            writer.WriteStartArray();

            foreach (System.Data.DataTable table in dataSet.Tables)
            {
                converter.Write(writer, table, options);
            }

            writer.WriteEndArray();
            writer.WriteEndObject();

            converter = null;
        }


    }


}