
// Licensed under the Apache License, Version 2.0
// http://www.apache.org/licenses/LICENSE-2.0


using System;
using System.Xml.Serialization;
using System.Collections.Generic;

// https://xmltocsharp.azurewebsites.net/

namespace TestPWA.OpenOffice.Xml2CSharp
{
    [XmlRoot(ElementName = "font-face", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
    public class Fontface
    {
        [XmlAttribute(AttributeName = "name", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
        public string Name { get; set; }
        [XmlAttribute(AttributeName = "font-family", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:svg-compatible:1.0")]
        public string Fontfamily { get; set; }
        [XmlAttribute(AttributeName = "font-family-generic", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
        public string Fontfamilygeneric { get; set; }
        [XmlAttribute(AttributeName = "font-pitch", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
        public string Fontpitch { get; set; }
    }

    [XmlRoot(ElementName = "font-face-decls", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:office:1.0")]
    public class Fontfacedecls
    {
        [XmlElement(ElementName = "font-face", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
        public List<Fontface> Fontface { get; set; }
    }

    [XmlRoot(ElementName = "table-column-properties", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
    public class Tablecolumnproperties
    {
        [XmlAttribute(AttributeName = "break-before", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:xsl-fo-compatible:1.0")]
        public string Breakbefore { get; set; }
        [XmlAttribute(AttributeName = "column-width", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
        public string Columnwidth { get; set; }
    }

    [XmlRoot(ElementName = "style", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
    public class Style
    {
        [XmlElement(ElementName = "table-column-properties", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
        public Tablecolumnproperties Tablecolumnproperties { get; set; }
        [XmlAttribute(AttributeName = "name", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
        public string Name { get; set; }
        [XmlAttribute(AttributeName = "family", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
        public string Family { get; set; }
        [XmlElement(ElementName = "table-row-properties", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
        public Tablerowproperties Tablerowproperties { get; set; }
        [XmlElement(ElementName = "table-properties", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
        public Tableproperties Tableproperties { get; set; }
        [XmlAttribute(AttributeName = "master-page-name", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
        public string Masterpagename { get; set; }
        [XmlElement(ElementName = "text-properties", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
        public Textproperties Textproperties { get; set; }
    }

    [XmlRoot(ElementName = "table-row-properties", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
    public class Tablerowproperties
    {
        [XmlAttribute(AttributeName = "row-height", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
        public string Rowheight { get; set; }
        [XmlAttribute(AttributeName = "break-before", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:xsl-fo-compatible:1.0")]
        public string Breakbefore { get; set; }
        [XmlAttribute(AttributeName = "use-optimal-row-height", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
        public string Useoptimalrowheight { get; set; }
    }

    [XmlRoot(ElementName = "table-properties", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
    public class Tableproperties
    {
        [XmlAttribute(AttributeName = "display", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
        public string Display { get; set; }
        [XmlAttribute(AttributeName = "writing-mode", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
        public string Writingmode { get; set; }
    }

    [XmlRoot(ElementName = "text-properties", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
    public class Textproperties
    {
        [XmlAttribute(AttributeName = "font-weight", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:xsl-fo-compatible:1.0")]
        public string Fontweight { get; set; }
        [XmlAttribute(AttributeName = "font-weight-asian", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
        public string Fontweightasian { get; set; }
        [XmlAttribute(AttributeName = "font-weight-complex", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
        public string Fontweightcomplex { get; set; }
    }

    [XmlRoot(ElementName = "automatic-styles", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:office:1.0")]
    public class Automaticstyles
    {
        [XmlElement(ElementName = "style", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:style:1.0")]
        public List<Style> Style { get; set; }
    }

    [XmlRoot(ElementName = "calculation-settings", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
    public class Calculationsettings
    {
        [XmlAttribute(AttributeName = "automatic-find-labels", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
        public string Automaticfindlabels { get; set; }
        [XmlAttribute(AttributeName = "use-regular-expressions", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
        public string Useregularexpressions { get; set; }
        [XmlAttribute(AttributeName = "use-wildcards", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
        public string Usewildcards { get; set; }
    }

    [XmlRoot(ElementName = "table-column", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
    public class Tablecolumn
    {
        [XmlAttribute(AttributeName = "style-name", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
        public string Stylename { get; set; }
        [XmlAttribute(AttributeName = "number-columns-repeated", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
        public string Numbercolumnsrepeated { get; set; }
        [XmlAttribute(AttributeName = "default-cell-style-name", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
        public string Defaultcellstylename { get; set; }
    }

    [XmlRoot(ElementName = "span", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:text:1.0")]
    public class Span
    {
        [XmlAttribute(AttributeName = "style-name", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:text:1.0")]
        public string Stylename { get; set; }
        [XmlText]
        public string Text { get; set; }
    }

    [XmlRoot(ElementName = "p", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:text:1.0")]
    public class P
    {
        [XmlElement(ElementName = "span", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:text:1.0")]
        public Span Span { get; set; }
    }

    [XmlRoot(ElementName = "table-cell", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
    public class Tablecell
    {
        [XmlElement(ElementName = "p", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:text:1.0")]
        public P P { get; set; }
        [XmlElement(ElementName = "value-type", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:office:1.0")]
        public List<string> Valuetype { get; set; }
        [XmlAttribute(AttributeName = "number-columns-spanned", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
        public string Numbercolumnsspanned { get; set; }
        [XmlAttribute(AttributeName = "number-rows-spanned", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
        public string Numberrowsspanned { get; set; }
    }

    [XmlRoot(ElementName = "covered-table-cell", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
    public class Coveredtablecell
    {
        [XmlAttribute(AttributeName = "number-columns-repeated", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
        public string Numbercolumnsrepeated { get; set; }
    }

    [XmlRoot(ElementName = "table-row", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
    public class Tablerow
    {
        [XmlElement(ElementName = "table-cell", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
        public Tablecell Tablecell { get; set; }
        [XmlElement(ElementName = "covered-table-cell", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
        public Coveredtablecell Coveredtablecell { get; set; }
        [XmlAttribute(AttributeName = "style-name", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
        public string Stylename { get; set; }
    }

    [XmlRoot(ElementName = "table", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
    public class Table
    {
        [XmlElement(ElementName = "table-column", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
        public Tablecolumn Tablecolumn { get; set; }
        [XmlElement(ElementName = "table-row", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
        public List<Tablerow> Tablerow { get; set; }
        [XmlAttribute(AttributeName = "name", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
        public string Name { get; set; }
        [XmlAttribute(AttributeName = "style-name", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
        public string Stylename { get; set; }
    }

    [XmlRoot(ElementName = "spreadsheet", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:office:1.0")]
    public class Spreadsheet
    {
        [XmlElement(ElementName = "calculation-settings", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
        public Calculationsettings Calculationsettings { get; set; }
        [XmlElement(ElementName = "table", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
        public Table Table { get; set; }
        [XmlElement(ElementName = "named-expressions", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:table:1.0")]
        public string Namedexpressions { get; set; }
    }

    [XmlRoot(ElementName = "body", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:office:1.0")]
    public class Body
    {
        [XmlElement(ElementName = "spreadsheet", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:office:1.0")]
        public Spreadsheet Spreadsheet { get; set; }
    }

    [XmlRoot(ElementName = "document-content", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:office:1.0")]
    public class Documentcontent
    {
        [XmlElement(ElementName = "scripts", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:office:1.0")]
        public string Scripts { get; set; }
        [XmlElement(ElementName = "font-face-decls", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:office:1.0")]
        public Fontfacedecls Fontfacedecls { get; set; }
        [XmlElement(ElementName = "automatic-styles", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:office:1.0")]
        public Automaticstyles Automaticstyles { get; set; }
        [XmlElement(ElementName = "body", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:office:1.0")]
        public Body Body { get; set; }
        [XmlAttribute(AttributeName = "office", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Office { get; set; }
        [XmlAttribute(AttributeName = "style", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Style { get; set; }
        [XmlAttribute(AttributeName = "text", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Text { get; set; }
        [XmlAttribute(AttributeName = "table", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Table { get; set; }
        [XmlAttribute(AttributeName = "draw", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Draw { get; set; }
        [XmlAttribute(AttributeName = "fo", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Fo { get; set; }
        [XmlAttribute(AttributeName = "xlink", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Xlink { get; set; }
        [XmlAttribute(AttributeName = "dc", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Dc { get; set; }
        [XmlAttribute(AttributeName = "meta", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Meta { get; set; }
        [XmlAttribute(AttributeName = "number", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Number { get; set; }
        [XmlAttribute(AttributeName = "presentation", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Presentation { get; set; }
        [XmlAttribute(AttributeName = "svg", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Svg { get; set; }
        [XmlAttribute(AttributeName = "chart", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Chart { get; set; }
        [XmlAttribute(AttributeName = "dr3d", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Dr3d { get; set; }
        [XmlAttribute(AttributeName = "math", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Math { get; set; }
        [XmlAttribute(AttributeName = "form", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Form { get; set; }
        [XmlAttribute(AttributeName = "script", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Script { get; set; }
        [XmlAttribute(AttributeName = "ooo", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Ooo { get; set; }
        [XmlAttribute(AttributeName = "ooow", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Ooow { get; set; }
        [XmlAttribute(AttributeName = "oooc", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Oooc { get; set; }
        [XmlAttribute(AttributeName = "dom", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Dom { get; set; }
        [XmlAttribute(AttributeName = "xforms", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Xforms { get; set; }
        [XmlAttribute(AttributeName = "xsd", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Xsd { get; set; }
        [XmlAttribute(AttributeName = "xsi", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Xsi { get; set; }
        [XmlAttribute(AttributeName = "rpt", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Rpt { get; set; }
        [XmlAttribute(AttributeName = "of", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Of { get; set; }
        [XmlAttribute(AttributeName = "xhtml", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Xhtml { get; set; }
        [XmlAttribute(AttributeName = "grddl", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Grddl { get; set; }
        [XmlAttribute(AttributeName = "tableooo", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Tableooo { get; set; }
        [XmlAttribute(AttributeName = "drawooo", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Drawooo { get; set; }
        [XmlAttribute(AttributeName = "calcext", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Calcext { get; set; }
        [XmlAttribute(AttributeName = "loext", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Loext { get; set; }
        [XmlAttribute(AttributeName = "field", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Field { get; set; }
        [XmlAttribute(AttributeName = "formx", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Formx { get; set; }
        [XmlAttribute(AttributeName = "css3t", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Css3t { get; set; }
        [XmlAttribute(AttributeName = "version", Namespace = "urn:oasis:names:tc:opendocument:  xmlns:office:1.0")]
        public string Version { get; set; }
    }

}
