
namespace TestPWA.XSLT 
{


    public class XsltTesting
    {


        public static void TransformXml(string myXmlFile, string myStyleSheet)
        {
            // System.Xml.XPath.XPathDocument myXPathDoc = new System.Xml.XPath.XPathDocument(myXmlFile); // FileName 
            System.Xml.XPath.XPathDocument myXPathDoc = new System.Xml.XPath.XPathDocument(new System.IO.StringReader(myXmlFile));
            

            System.Xml.Xsl.XslCompiledTransform myXslTrans = new System.Xml.Xsl.XslCompiledTransform();
            // myXslTrans.Load(myStyleSheet); // fileName 
            // myXslTrans.Load(System.Xml.XmlReader.Create(new System.IO.StringReader(myStyleSheet)));  // String  

            using (System.IO.StringReader sr = new System.IO.StringReader(myStyleSheet))
            {
                using (System.Xml.XmlReader xr = System.Xml.XmlReader.Create(sr))
                {
                    myXslTrans.Load(xr);
                } // End Using xr 

            } // End Using sr 

            using (System.Xml.XmlTextWriter myWriter = new System.Xml.XmlTextWriter("result.html", null))
            {
                myXslTrans.Transform(myXPathDoc, null, myWriter);
			} // End Using myWriter 

		} // End Function TransformXml 

		


		public static void TestAppend()
		{
			System.Text.StringBuilder sb = new System.Text.StringBuilder();
			string table_schema = "dbo";
			string table_name = "T_FMS_Configuration";

			System.Action<string> AppendOutput =
				delegate (string mergeStatement)
				{
					sb.Append("-- Table: ");
					sb.Append(table_schema);
					sb.Append(".");
					sb.Append(table_name);
					sb.AppendLine(mergeStatement);
					sb.AppendLine(System.Environment.NewLine);

					sb.AppendLine("GO");

					sb.AppendLine(System.Environment.NewLine);
					sb.AppendLine(System.Environment.NewLine);
				}
			;

		}

		public static void Test1()
        {
            string xml = @"
<company>
	<name>XYZ Inc.</name>
	<address1>One Abc Way</address1>
	<address2>Some avenue</address2>
	<city>Tech city</city>
	<country>Neverland</country>
</company>";

            string xslt = @"<!--
	- XSLT is a template based language to transform Xml documents
	It uses XPath to select specific nodes 
	for processing.
	
	- A XSLT file is a well formed Xml document
-->

<!-- every StyleSheet starts with this tag -->
<xsl:stylesheet 
      xmlns:xsl=""http://www.w3.org/1999/XSL/Transform""
      version=""1.0"">

<!-- indicates what our output type is going to be -->
<xsl:output method=""html"" />		
	
	<!-- 
		Main template to kick off processing our Sample.xml
		From here on we use a simple XPath selection query to 
		get to our data.
	-->
	<xsl:template match=""/"">
		<html>
			<head>
				<title>Welcome to <xsl:value-of select=""/company/name""/></title>
				<style>
					body,td {font-family:Tahoma,Arial; font-size:9pt;}
				</style>
			</head>
			<body>
				<h2>Welcome to <xsl:value-of select=""/company/name""/></h2>
				<p/>
				<b>Our contact details:</b>
				<br/>
				<br/>		
				<xsl:value-of select=""/company/name""/>
				<br/>
				<xsl:value-of select=""/company/address1""/>
				<br/>
				<xsl:value-of select=""/company/address2""/>
				<br/>
				<xsl:value-of select=""/company/city""/>
				<br/>
				<xsl:value-of select=""/company/country""/>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
";

            TransformXml(xml, xslt);
        } // End Sub Test1 


		public delegate System.Xml.XmlDocument inline_function(string text);


        public static string TransformDocument(string doc, string stylesheet)
        {
			inline_function GetXmlDocument = delegate(string xmlContent) 
            {
                System.Xml.XmlDocument xmlDocument = new System.Xml.XmlDocument();
                xmlDocument.LoadXml(xmlContent);
                return xmlDocument;
            };

            try
            {
                System.Xml.XmlDocument document = GetXmlDocument(doc);
				// System.Xml.XmlDocument style = GetXmlDocument(System.IO.File.ReadAllText(stylesheetPath));
				System.Xml.XmlDocument style = GetXmlDocument(stylesheet);

				System.Xml.Xsl.XslCompiledTransform transform = new System.Xml.Xsl.XslCompiledTransform();
                transform.Load(style); // compiled stylesheet
                System.IO.StringWriter writer = new System.IO.StringWriter();
                System.Xml.XmlReader xmlReadB = new System.Xml.XmlTextReader(new System.IO.StringReader(document.DocumentElement.OuterXml));
                transform.Transform(xmlReadB, null, writer);
                return writer.ToString();
            }
            catch (System.Exception ex)
            {
                throw ex;
            }

		} // End Function TransformDocument 



		public static void Test2()
		{
			string xml = @"
<company>
	<name>XYZ Inc.</name>
	<address1>One Abc Way</address1>
	<address2>Some avenue</address2>
	<city>Tech city</city>
	<country>Neverland</country>
</company>";

			string xslt = @"<!--
	- XSLT is a template based language to transform Xml documents
	It uses XPath to select specific nodes 
	for processing.
	
	- A XSLT file is a well formed Xml document
-->

<!-- every StyleSheet starts with this tag -->
<xsl:stylesheet 
      xmlns:xsl=""http://www.w3.org/1999/XSL/Transform""
      version=""1.0"">

<!-- indicates what our output type is going to be -->
<xsl:output method=""html"" />		
	
	<!-- 
		Main template to kick off processing our Sample.xml
		From here on we use a simple XPath selection query to 
		get to our data.
	-->
	<xsl:template match=""/"">
		<html>
			<head>
				<title>Welcome to <xsl:value-of select=""/company/name""/></title>
				<style>
					body,td {font-family:Tahoma,Arial; font-size:9pt;}
				</style>
			</head>
			<body>
				<h2>Welcome to <xsl:value-of select=""/company/name""/></h2>
				<p/>
				<b>Our contact details:</b>
				<br/>
				<br/>		
				<xsl:value-of select=""/company/name""/>
				<br/>
				<xsl:value-of select=""/company/address1""/>
				<br/>
				<xsl:value-of select=""/company/address2""/>
				<br/>
				<xsl:value-of select=""/company/city""/>
				<br/>
				<xsl:value-of select=""/company/country""/>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
";

			string html = TransformDocument(xml, xslt);
			System.Console.WriteLine(html);
		} // End Sub Test2 


	} // End Class XsltTesting 


} // End Namespace UpsertSQL 
