
using AnySqlWebAdmin;
using System;
using System.Collections.Generic;
using System.Text.Json;
using System.Text.Json.Serialization;


namespace TestPWA.Code.DB
{

    public class MyDicionaryConverter
      : JsonConverter<System.Collections.Generic.Dictionary<string, object>>
    {
        public override Dictionary<string, object> Read(ref Utf8JsonReader reader, Type typeToConvert, JsonSerializerOptions options)
        {
            throw new NotImplementedException();
        }

        public override bool CanConvert(System.Type objectType)
        {
            bool b = typeof(System.Collections.Generic.Dictionary<string, object>).IsAssignableFrom(objectType);

            if (b)
            {
                System.Console.WriteLine(objectType.FullName);
            }

            return b;
        }


        public override void Write(Utf8JsonWriter writer, Dictionary<string, object> value, JsonSerializerOptions options)
        {
            throw new NotImplementedException();
        }
    }

    public class ExceptionConverter
       : JsonConverter<System.Exception>
    {
        /// <summary>
        /// Determines whether this instance can convert the specified value type.
        /// </summary>
        public override bool CanConvert(System.Type objectType)
        {
            bool b = typeof(System.Exception).IsAssignableFrom(objectType);

            // if (object.ReferenceEquals(typeof(System.Reflection.TypeInfo), objectType)) return false;

            if (b)
            {
                System.Console.WriteLine(objectType.FullName);
            }

            return b;
        }


        public override Exception Read(ref Utf8JsonReader reader, Type typeToConvert, JsonSerializerOptions options)
        {
            return null;
        }

        public override void Write(Utf8JsonWriter writer, Exception value, JsonSerializerOptions options)
        {

            System.Exception thisError = value;


            int innerExceptionCount = 0;

            writer.WriteStartObject();
            while (thisError != null)
            {
                writer.WritePropertyName("Message");
                writer.WriteStringValue(thisError.Message);

                writer.WritePropertyName("StackTrace");
                writer.WriteStringValue(thisError.StackTrace);

                writer.WritePropertyName("Source");
                writer.WriteStringValue(thisError.Source);

                writer.WritePropertyName("HelpLink");
                writer.WriteStringValue(thisError.HelpLink);

                // Do NOT serialize this.
                // writer.WritePropertyName("TargetSite");
                // writer.WriteStringValue(thisError.TargetSite.Name);

                writer.WritePropertyName("Type");
                writer.WriteStringValue(thisError.GetType().FullName);

                writer.WritePropertyName("Data");
                JsonSerializer.Serialize(writer, thisError.Data, options);
                
                if (thisError.InnerException != null)
                {
                    innerExceptionCount++;
                    System.Console.WriteLine(thisError.InnerException);
                    writer.WritePropertyName("InnerException");
                    writer.WriteStartObject();
                } // End if (thisError.InnerException != null) 

                thisError = thisError.InnerException;
            } // Whend 

            for (int i = 0; i < innerExceptionCount; ++i)
            {
                writer.WriteEndObject();
            }

            writer.WriteEndObject();

            System.Console.WriteLine(value);
        }
    }
    public class HttpContextWrapperConverter
       : JsonConverter<AnySqlWebAdmin.HttpContextWrapper>
    {


        /// <summary>
        /// Determines whether this instance can convert the specified value type.
        /// </summary>
        public override bool CanConvert(System.Type objectType)
        {
            bool b = typeof(AnySqlWebAdmin.HttpContextWrapper).IsAssignableFrom(objectType);

            // if (object.ReferenceEquals(typeof(System.Reflection.TypeInfo), objectType)) return false;

            if (b)
            {
                System.Console.WriteLine(objectType.FullName);
            }

            return b;
        }

        public override HttpContextWrapper Read(ref Utf8JsonReader reader, Type typeToConvert, JsonSerializerOptions options)
        {
            return null;
        }

        public override void Write(Utf8JsonWriter writer, HttpContextWrapper value, JsonSerializerOptions options)
        {
            System.Console.WriteLine(value);
        }
    }


        public class SystemTypeConverter 
        : JsonConverter<System.Type>
    {


        /// <summary>
        /// Determines whether this instance can convert the specified value type.
        /// </summary>
        public override bool CanConvert(System.Type objectType)
        {
            bool b = typeof(System.Type).IsAssignableFrom(objectType);

            if (object.ReferenceEquals(typeof(System.Reflection.TypeInfo), objectType))
                return false; 

            if (b)
            {
                System.Console.WriteLine(objectType.FullName);
            }

            return b;
        }


        public override System.Type Read(ref Utf8JsonReader reader, System.Type typeToConvert, JsonSerializerOptions options)
        {
            System.Console.WriteLine(typeToConvert.FullName);
            return typeof(string);
        }

        public override void Write(Utf8JsonWriter writer, System.Type value, JsonSerializerOptions options)
        {
            System.Console.WriteLine(value.FullName);
        }
    }



    public class DataTableConverter 
        : JsonConverter<System.Data.DataTable>
    {
        public override System.Data.DataTable Read(ref Utf8JsonReader reader, System.Type typeToConvert,
            JsonSerializerOptions options)
        {
            throw new System.NotImplementedException();
        }

        public override void Write(Utf8JsonWriter writer, System.Data.DataTable value,
            JsonSerializerOptions options)
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
                    JsonSerializer.Serialize(writer, columnValue, options);
                }

                writer.WriteEndObject();
            }

            writer.WriteEndArray();
        }
    }


    public class DataSetConverter 
        : JsonConverter<System.Data.DataSet>
    {
        public override System.Data.DataSet Read(ref Utf8JsonReader reader, System.Type typeToConvert, JsonSerializerOptions options)
        {
            throw new System.NotImplementedException();
        }

        public override void Write(Utf8JsonWriter writer, System.Data.DataSet value, JsonSerializerOptions options)
        {
            writer.WriteStartObject();
            foreach (System.Data.DataTable table in value.Tables)
            {
                writer.WritePropertyName(table.TableName);
                JsonSerializer.Serialize(writer, table, options);
            }
            writer.WriteEndObject();
        }
    }


    public class TestMethod
    {


        private static void DataSet_Serialization_WithSystemTextJson()
        {
            JsonSerializerOptions options = new JsonSerializerOptions()
            {
                Converters = { new DataTableConverter(), new DataSetConverter() }
            };

            (System.Data.DataTable table, System.Data.DataSet dataSet) = GetDataSetAndTable();

            string jsonDataTable = JsonSerializer.Serialize(table, options);
            // [{"id":0,"item":"item 0"},{"id":1,"item":"item 1"}]
            System.Console.WriteLine(jsonDataTable);

            string jsonDataSet = JsonSerializer.Serialize(dataSet, options);
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
