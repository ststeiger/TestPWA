
// https://weblog.west-wind.com/posts/2008/sep/03/datatable-json-serialization-in-jsonnet-and-javascriptserializer
using System;
using System.Data;
using System.Text.Json;


// https://github.com/ststeiger/CoreCms/blob/master/CoreCMS/AppCode/Serializer/DataTableSerializer.cs
// read: 
// https://github.com/ststeiger/ImportExportTableData/blob/master/ImportExportTableData/Experimental/DataTableConverter.cs

namespace CoreCMS
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
        public override DataRow Read(ref Utf8JsonReader reader, Type typeToConvert, JsonSerializerOptions options)
        {
            throw new NotImplementedException();
        }


        public override void Write(Utf8JsonWriter writer, DataRow row, JsonSerializerOptions options)
        {
            writer.WriteStartObject();
            foreach (System.Data.DataColumn column in row.Table.Columns)
            {
                writer.WritePropertyName(column.ColumnName);

                if (row[column] == System.DBNull.Value)
                    JsonSerializer.Serialize(writer, null, options);
                else
                    JsonSerializer.Serialize(writer, row[column], options);
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
        public override DataTable Read(ref Utf8JsonReader reader, Type typeToConvert, JsonSerializerOptions options)
        {
            throw new NotImplementedException();
        }


    
    /// <summary>
    /// Writes the JSON representation of the object.
    /// </summary>
    public override void Write(Utf8JsonWriter writer, DataTable table, JsonSerializerOptions options)
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
        public override DataSet Read(ref Utf8JsonReader reader, Type typeToConvert, JsonSerializerOptions options)
        {
            throw new System.NotImplementedException();
        }



        public override void Write(Utf8JsonWriter writer, DataSet dataSet, JsonSerializerOptions options)
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