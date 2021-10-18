﻿
namespace Dapper
{


    public static partial class AsXmlExtension 
    {


        private class StringWriterWithEncoding
            : System.IO.StringWriter
        {
            private readonly System.Text.Encoding m_Encoding;


            public StringWriterWithEncoding(System.Text.StringBuilder sb, System.Text.Encoding encoding)
                : base(sb)
            {
                this.m_Encoding = encoding;
            }


            public override System.Text.Encoding Encoding
            {
                get { return this.m_Encoding; }
            }


        } // End Class StringWriterWithEncoding



        private static void LargeDataToXML(
              string table_schema
            , string table_name
            , System.Xml.XmlWriter writer
            , System.Data.IDataReader dr)
        {
            writer.WriteStartDocument(true);
            writer.WriteStartElement("table");
            // writer.WriteStartElement(table_name);

            if(!string.IsNullOrWhiteSpace(table_schema))
                writer.WriteAttributeString(null, "table_schema", null, table_schema);

            if (!string.IsNullOrWhiteSpace(table_name))
                writer.WriteAttributeString(null, "table_name", null, table_name);

            writer.WriteAttributeString("xmlns", "xsi", null, System.Xml.Schema.XmlSchema.InstanceNamespace);
            // writer.WriteAttributeString("xsi", "schemaLocation", null, System.Xml.Schema.XmlSchema.InstanceNamespace);

            int fc = dr.FieldCount;

            string[] columnNames = new string[fc];
            System.Type[] columnTypes = new System.Type[fc];

            for (int i = 0; i < dr.FieldCount; ++i)
            {
                columnNames[i] = dr.GetName(i);
                columnTypes[i] = dr.GetFieldType(i);
            } // Next i 

            while (dr.Read())
            {
                writer.WriteStartElement("row");

                for (int i = 0; i < fc; ++i)
                {
                    writer.WriteStartElement(columnNames[i]);
                    object obj = dr.GetValue(i);

                    if (obj != System.DBNull.Value)
                    {
                        if (object.ReferenceEquals(columnTypes[i], typeof(System.DateTime)))
                        {
                            System.DateTime dt = (System.DateTime)obj;
                            writer.WriteValue(dt.ToString("yyyy-MM-dd'T'HH':'mm':'ss'.'fff",
                                System.Globalization.CultureInfo.InvariantCulture));
                        }
                        else
                            writer.WriteValue(System.Convert.ToString(obj, System.Globalization.CultureInfo.InvariantCulture));
                    }
                    else
                        writer.WriteAttributeString("xsi", "nil", System.Xml.Schema.XmlSchema.InstanceNamespace, "true");

                    writer.WriteEndElement();
                } // Next i

                writer.WriteEndElement();
            } // Whend 

            writer.WriteEndElement();
        } // End Sub LargeDataToXML 


        private static string QuoteObject(string objectName)
        {
            if (string.IsNullOrEmpty(objectName))
                throw new System.ArgumentNullException("objectName");

            return "\"" + objectName.Replace("\"", "\"\"") + "\"";
        } // End Function QuoteObject 


        public static void AsXml(
              this System.Data.IDbConnection cnn
            , string table_schema
            , string table_name
            , System.Xml.XmlWriter writer
            , string sql = null
            , object param = null
            , System.Data.IDbTransaction transaction = null
            , int? commandTimeout = null
            , System.Data.CommandType? commandType = null)
        {
            if (string.IsNullOrEmpty(sql))
                sql = "SELECT * FROM " + QuoteObject(table_schema) + "." + QuoteObject(table_name) + "; ";

            using (System.Data.IDataReader reader = cnn.ExecuteReader(sql, param, transaction, commandTimeout, commandType))
            {
                LargeDataToXML(table_schema, table_name, writer, reader);
            } // End Using reader 

        } // End Sub AsXml 

        public static void AsXml(
             this System.Data.IDbConnection cnn
           , System.Xml.XmlWriter writer
           , string sql 
           , object param = null
           , System.Data.IDbTransaction transaction = null
           , int? commandTimeout = null
           , System.Data.CommandType? commandType = null)
        {
            using (System.Data.IDataReader reader = cnn.ExecuteReader(sql, param, transaction, commandTimeout, commandType))
            {
                LargeDataToXML(null, null, writer, reader);
            } // End Using reader 

        } // End Sub AsXml 


        private static System.Xml.XmlWriter CreateXmlWriter(System.Text.StringBuilder builder)
        {
            System.Xml.XmlWriterSettings xs = new System.Xml.XmlWriterSettings();
            xs.Indent = true;
            xs.IndentChars = "    ";
            xs.NewLineChars = System.Environment.NewLine;
            xs.OmitXmlDeclaration = false; // // <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
            // xs.Encoding = System.Text.Encoding.UTF8; // doesn't work with pgsql 
            // xs.Encoding = new System.Text.UTF8Encoding(false);
            xs.Encoding = new System.Text.UnicodeEncoding(false, false);


            StringWriterWithEncoding sw = new StringWriterWithEncoding(builder, xs.Encoding);

            // string exportFilename = System.IO.Path.Combine(@"d:\", table_name + ".xml");
            // using (System.Xml.XmlWriter writer = System.Xml.XmlWriter.Create(exportFilename, xs))
            return System.Xml.XmlWriter.Create(sw, xs);
        } // End Function CreateXmlWriter 


        public static void AsXml(
              this System.Data.IDbConnection cnn
            , string table_schema
            , string table_name
            , System.Text.StringBuilder sb
            , string sql = null
            , object param = null
            , System.Data.IDbTransaction transaction = null
            , int? commandTimeout = null
            , System.Data.CommandType? commandType = null)
        {

            using (System.Xml.XmlWriter writer = CreateXmlWriter(sb))
            {
                AsXml(cnn, table_schema, table_name, writer, sql, param, transaction, commandTimeout, commandType);
            } // End Using writer 

        } // End Sub AsXml 


        public static void AsXml(
              this System.Data.IDbConnection cnn 
            , System.Text.StringBuilder sb
            , string sql 
            , object param = null
            , System.Data.IDbTransaction transaction = null
            , int? commandTimeout = null
            , System.Data.CommandType? commandType = null)
        {

            using (System.Xml.XmlWriter writer = CreateXmlWriter(sb))
            {
                AsXml(cnn, null, null, writer, sql, param, transaction, commandTimeout, commandType);
            } // End Using writer 

        } // End Sub AsXml 


    } // End Class SqlMapper 


} // End Namespace Dapper 
