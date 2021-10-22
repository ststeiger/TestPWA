using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Xml.Serialization;


// https://json2csharp.com/xml-to-csharp
namespace TestPWA.OpenOffice.Json2CSharp
{


	// using System.Xml.Serialization;
	// XmlSerializer serializer = new XmlSerializer(typeof(DocumentContent));
	// using (StringReader reader = new StringReader(xml))
	// {
	//    var test = (DocumentContent)serializer.Deserialize(reader);
	// }


	[XmlRoot(ElementName = "font-face")]
	public class Fontface
	{

		[XmlAttribute(AttributeName = "name")]
		public string Name { get; set; }

		[XmlAttribute(AttributeName = "font-family")]
		public string FontFamily { get; set; }

		[XmlAttribute(AttributeName = "font-family-generic")]
		public string FontFamilyGeneric { get; set; }

		[XmlAttribute(AttributeName = "font-pitch")]
		public string FontPitch { get; set; }
	}


	[XmlRoot(ElementName = "font-face-decls")]
	public class Fontfacedecls
	{

		[XmlElement(ElementName = "fontface")]
		public List<Fontface> Fontface { get; set; }
	}


	[XmlRoot(ElementName = "table-column-properties")]
	public class Tablecolumnproperties
	{

		[XmlAttribute(AttributeName = "break-before")]
		public string BreakBefore { get; set; }

		[XmlAttribute(AttributeName = "column-width")]
		public string ColumnWidth { get; set; }
	}


	[XmlRoot(ElementName = "style")]
	public class Style
	{

		[XmlElement(ElementName = "table-column-properties")]
		public Tablecolumnproperties Tablecolumnproperties { get; set; }

		[XmlAttribute(AttributeName = "name")]
		public string Name { get; set; }

		[XmlAttribute(AttributeName = "family")]
		public string Family { get; set; }

		[XmlElement(ElementName = "table-row-properties")]
		public Tablerowproperties Tablerowproperties { get; set; }

		[XmlElement(ElementName = "table-properties")]
		public Tableproperties Tableproperties { get; set; }

		[XmlAttribute(AttributeName = "master-page-name")]
		public string MasterPageName { get; set; }

		[XmlElement(ElementName = "text-properties")]
		public Textproperties Textproperties { get; set; }
	}


	[XmlRoot(ElementName = "table-row-properties")]
	public class Tablerowproperties
	{

		[XmlAttribute(AttributeName = "row-height")]
		public string RowHeight { get; set; }

		[XmlAttribute(AttributeName = "break-before")]
		public string BreakBefore { get; set; }

		[XmlAttribute(AttributeName = "use-optimal-row-height")]
		public bool UseOptimalRowHeight { get; set; }
	}


	[XmlRoot(ElementName = "table-properties")]
	public class Tableproperties
	{

		[XmlAttribute(AttributeName = "display")]
		public bool Display { get; set; }

		[XmlAttribute(AttributeName = "writing-mode")]
		public string WritingMode { get; set; }
	}

	[XmlRoot(ElementName = "text-properties")]
	public class Textproperties
	{

		[XmlAttribute(AttributeName = "font-weight")]
		public string FontWeight { get; set; }

		[XmlAttribute(AttributeName = "font-weight-asian")]
		public string FontWeightAsian { get; set; }

		[XmlAttribute(AttributeName = "font-weight-complex")]
		public string FontWeightComplex { get; set; }
	}

	[XmlRoot(ElementName = "automatic-styles")]
	public class Automaticstyles
	{

		[XmlElement(ElementName = "style")]
		public List<Style> Style { get; set; }
	}

	[XmlRoot(ElementName = "calculation-settings")]
	public class Calculationsettings
	{

		[XmlAttribute(AttributeName = "automatic-find-labels")]
		public bool AutomaticFindLabels { get; set; }

		[XmlAttribute(AttributeName = "use-regular-expressions")]
		public bool UseRegularExpressions { get; set; }

		[XmlAttribute(AttributeName = "use-wildcards")]
		public bool UseWildcards { get; set; }
	}


	[XmlRoot(ElementName = "table-column")]
	public class Tablecolumn
	{

		[XmlAttribute(AttributeName = "style-name")]
		public string StyleName { get; set; }

		[XmlAttribute(AttributeName = "number-columns-repeated")]
		public int NumberColumnsRepeated { get; set; }

		[XmlAttribute(AttributeName = "default-cell-style-name")]
		public string DefaultCellStyleName { get; set; }
	}



	[XmlRoot(ElementName = "span")]
	public class Span
	{

		[XmlAttribute(AttributeName = "style-name")]
		public string StyleName { get; set; }

		[XmlText]
		public string Text { get; set; }
	}


	[XmlRoot(ElementName = "p")]
	public class P
	{

		[XmlElement(ElementName = "span")]
		public Span Span { get; set; }
	}

	[XmlRoot(ElementName = "table-cell")]
	public class Tablecell
	{

		[XmlElement(ElementName = "p")]
		public List<string> P { get; set; }

		[XmlElement(ElementName = "value-type")]
		public List<string> ValueType { get; set; }

		[XmlAttribute(AttributeName = "number-columns-spanned")]
		public int NumberColumnsSpanned { get; set; }

		[XmlAttribute(AttributeName = "number-rows-spanned")]
		public int NumberRowsSpanned { get; set; }

		[XmlText]
		public string Text { get; set; }
	}

	[XmlRoot(ElementName = "covered-table-cell")]
	public class Coveredtablecell
	{

		[XmlAttribute(AttributeName = "number-columns-repeated")]
		public int NumberColumnsRepeated { get; set; }
	}

	[XmlRoot(ElementName = "table-row")]
	public class Tablerow
	{

		[XmlElement(ElementName = "table-cell")]
		public Tablecell Tablecell { get; set; }

		[XmlElement(ElementName = "covered-table-cell")]
		public Coveredtablecell Coveredtablecell { get; set; }

		[XmlAttribute(AttributeName = "style-name")]
		public string StyleName { get; set; }

		[XmlText]
		public string Text { get; set; }
	}

	[XmlRoot(ElementName = "table")]
	public class Table
	{

		[XmlElement(ElementName = "table-column")]
		public Tablecolumn Tablecolumn { get; set; }

		[XmlElement(ElementName = "tablerow")]
		public List<Tablerow> Tablerow { get; set; }

		[XmlAttribute(AttributeName = "name")]
		public string Name { get; set; }

		[XmlAttribute(AttributeName = "style-name")]
		public string StyleName { get; set; }

		[XmlText]
		public string Text { get; set; }
	}

	[XmlRoot(ElementName = "spreadsheet")]
	public class Spreadsheet
	{

		[XmlElement(ElementName = "calculation-settings")]
		public Calculationsettings Calculationsettings { get; set; }

		[XmlElement(ElementName = "table")]
		public Table Table { get; set; }

		[XmlElement(ElementName = "named-expressions")]
		public object Namedexpressions { get; set; }
	}


	[XmlRoot(ElementName = "body")]
	public class Body
	{

		[XmlElement(ElementName = "spreadsheet")]
		public Spreadsheet Spreadsheet { get; set; }
	}


	[XmlRoot(ElementName = "document-content")]
	public class Documentcontent
	{

		[XmlElement(ElementName = "scripts")]
		public object Scripts { get; set; }

		[XmlElement(ElementName = "font-face-decls")]
		public Fontfacedecls Fontfacedecls { get; set; }

		[XmlElement(ElementName = "automatic-styles")]
		public Automaticstyles Automaticstyles { get; set; }

		[XmlElement(ElementName = "body")]
		public Body Body { get; set; }

		[XmlAttribute(AttributeName = "office")]
		public string Office { get; set; }

		[XmlAttribute(AttributeName = "style")]
		public string Style { get; set; }

		[XmlElement(ElementName = "text")]
		public List<string> Text { get; set; }

		[XmlAttribute(AttributeName = "table")]
		public string Table { get; set; }

		[XmlAttribute(AttributeName = "draw")]
		public string Draw { get; set; }

		[XmlAttribute(AttributeName = "fo")]
		public string Fo { get; set; }

		[XmlAttribute(AttributeName = "xlink")]
		public string Xlink { get; set; }

		[XmlAttribute(AttributeName = "dc")]
		public string Dc { get; set; }

		[XmlAttribute(AttributeName = "meta")]
		public string Meta { get; set; }

		[XmlAttribute(AttributeName = "number")]
		public string Number { get; set; }

		[XmlAttribute(AttributeName = "presentation")]
		public string Presentation { get; set; }

		[XmlAttribute(AttributeName = "svg")]
		public string Svg { get; set; }

		[XmlAttribute(AttributeName = "chart")]
		public string Chart { get; set; }

		[XmlAttribute(AttributeName = "dr3d")]
		public string Dr3d { get; set; }

		[XmlAttribute(AttributeName = "math")]
		public string Math { get; set; }

		[XmlAttribute(AttributeName = "form")]
		public string Form { get; set; }

		[XmlAttribute(AttributeName = "script")]
		public string Script { get; set; }

		[XmlAttribute(AttributeName = "ooo")]
		public string Ooo { get; set; }

		[XmlAttribute(AttributeName = "ooow")]
		public string Ooow { get; set; }

		[XmlAttribute(AttributeName = "oooc")]
		public string Oooc { get; set; }

		[XmlAttribute(AttributeName = "dom")]
		public string Dom { get; set; }

		[XmlAttribute(AttributeName = "xforms")]
		public string Xforms { get; set; }

		[XmlAttribute(AttributeName = "xsd")]
		public string Xsd { get; set; }

		[XmlAttribute(AttributeName = "xsi")]
		public string Xsi { get; set; }

		[XmlAttribute(AttributeName = "rpt")]
		public string Rpt { get; set; }

		[XmlAttribute(AttributeName = "of")]
		public string Of { get; set; }

		[XmlAttribute(AttributeName = "xhtml")]
		public string Xhtml { get; set; }

		[XmlAttribute(AttributeName = "grddl")]
		public string Grddl { get; set; }

		[XmlAttribute(AttributeName = "tableooo")]
		public string Tableooo { get; set; }

		[XmlAttribute(AttributeName = "drawooo")]
		public string Drawooo { get; set; }

		[XmlAttribute(AttributeName = "calcext")]
		public string Calcext { get; set; }

		[XmlAttribute(AttributeName = "loext")]
		public string Loext { get; set; }

		[XmlAttribute(AttributeName = "field")]
		public string Field { get; set; }

		[XmlAttribute(AttributeName = "formx")]
		public string Formx { get; set; }

		[XmlAttribute(AttributeName = "css3t")]
		public string Css3t { get; set; }

		[XmlAttribute(AttributeName = "version")]
		public DateTime Version { get; set; }
	}


}
