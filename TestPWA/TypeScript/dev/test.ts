
"use strict";

import * as hu from "./HttpUtility.js";
// let hu: IHttpUtility = require<IHttpUtility>("./HttpUtility.js")
// let hu: IHttpUtility = null;

// do polyfills immediately on script-load
if (true)
{
    // aff = require<IHttpUtility>("./HttpUtility.js")
}


function ltrim(str:string)
{
    if (!str) return str;
    // return str.replace(/^\s+/g, '');
    return str.replace(/^[\s\uFEFF\xA0]+/g, '');
}

function rtrim(str: string)
{
    if (!str) return str;
    //return str.replace(/\s+$/g, '');
    return str.replace(/[\s\uFEFF\xA0]+$/g, '');

}

function trimStr(str: string)
{
    if (!str) return str;
    // return str.replace(/^\s+|\s+$/g, '');
    return str.replace(/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g, '');
}



function getValues()
{
    // td:not([colspan])
    let eles = document.querySelectorAll('tr td[colspan="6"]');
    let arr = [];

    for (let i = 0; i < eles.length; ++i)
    {
        arr.push(trimStr(eles[i].textContent));
    }

    return arr;
}

console.log(JSON.stringify(getValues(), null, "  "));

// https://localhost:44314/ts/require/require.js?v=1
// https://localhost:44314/vertical_text.htm
// https://localhost:44314/Schuettgutcontainer.htm

function getProperties(el:Element)
{
    let arr = []

    for (let i = 0, atts = el.attributes, n = atts.length; i < n; i++)
    {
        let a = atts[i].nodeName;
        arr.push([a, el.getAttribute(a)]);
    }

    return arr;
}


interface IElementData
{
    tagName: string;
    properties: string[][];
    innerHtml?: string;
}


interface IChecklistData 
{
    element: IElementData;
    children: IChecklistData[];
}


function iterator(p: Node)
{
    if (p == null)
        return;

    let children: Node[] = Array.prototype.slice.call(p.childNodes);

    let checklistData: IChecklistData = {
        "element": {
            "tagName": p.nodeName,
            "properties": getProperties(<Element>p)
        }
        ,"children": []
    };
    
    if (p.nodeName.toLowerCase() === "td")
        checklistData.element.innerHtml = (<Element>p).innerHTML;
    else 
    if (children.length)
    {
        for (let i = 0; i < children.length; i++)
        {
            let cur: Node = children[i];

            // https://developer.mozilla.org/en-US/docs/Web/API/Node/nodeType
            if (cur.nodeType === Node.TEXT_NODE) 
            {
                // this.checkAndReplace(cur);
            }
            else if (cur.nodeType === Node.ELEMENT_NODE) 
            {
                // console.log("cur", cur);
                // console.log("cur.nodeName", cur.nodeName);
                // console.log("cur.nodeValue", cur.nodeValue);
                // console.log("cur.getProperties", getProperties(<Element>cur));
                
                let ret = iterator(cur);
                checklistData.children.push(ret);
            }

        } // Next i 

    } // End if (children.length) 

    return checklistData;
} // End Sub iterator


function createElement(ed:IElementData)
{
    let el = document.createElement(ed.tagName);
    for (let i = 0; i < ed.properties.length; ++i)
    {
        el.setAttribute(ed.properties[i][0], ed.properties[i][1]);
    }

    if(ed.innerHtml)
        el.innerHTML = ed.innerHtml;
    
    return el;
}



function tabulator(obj: IChecklistData, parent?: Node)
{
    parent = parent || document.createDocumentFragment();
    let a = createElement(obj.element);
    
    for (let i = 0; i < obj.children.length; ++i)
    {
        tabulator(obj.children[i], a);
    }

    parent.appendChild(a);

    return parent;
}


function Replace(str: string, oldToken: string, newToken?: string, ignoreCase?:boolean)
{
    newToken = newToken || "";
    ignoreCase = ignoreCase || false;

    if (!str || !oldToken)
        return str;

    if ((ignoreCase ? oldToken.toLowerCase() : oldToken) == (ignoreCase ? newToken.toLowerCase() : newToken))
        return str;

    let foundAt = 0;
    while ((foundAt = ((ignoreCase ? str.toLowerCase() : str)).indexOf(oldToken, foundAt)) != -1)
    {
        str = str.substr(0, foundAt) + newToken + str.substr(foundAt + oldToken.length);
        foundAt += newToken.length;
    }

    return str;
}

// XML-Beautifier
// https://gist.github.com/max-pub/a5c15b7831bbfaba7ad13acefc3d0781
let XML = {
    // like JSON.parse
    parse: function (string: string, type: DOMParserSupportedType = 'text/xml'):Document
    {
        return new DOMParser().parseFromString(string, type); 
    },

    // like JSON.stringify
    stringify: function (DOM: Node):string 
    {
        return new XMLSerializer().serializeToString(DOM);
    },
        
    transform: function(xml:string, xsl:string) 
    {
        let proc = new XSLTProcessor();
        proc.importStylesheet(typeof xsl == 'string' ? XML.parse(xsl) : xsl);
        let output = proc.transformToFragment(typeof xml == 'string' ? XML.parse(xml) : xml, document);
        return typeof xml == 'string' ? XML.stringify(output) : output; // if source was string then stringify response, else return object
    },
    
    minify: function (node: Element):string 
    {
        return XML.toString(node, false);
    },
        
    prettify: function (node: Element):string 
    {
        // return XML.toString(node, true);
        let res = XML.toString(node, true);
        
        if (res.startsWith("<#document-fragment>"))
            res = res.substr("<#document-fragment>".length);

        if (res.endsWith("</#document-fragment>\n"))
        {
            res = res.substr(0, res.length - "</#document-fragment>\n".length);
            res += "\n";
        }
        
        return res;
    },

    toString: function(node:Node, pretty:boolean, level = 0, singleton = false):string 
    {
        
        // einzelkind
        if (typeof node == 'string')
            node = XML.parse(node);
        
        let tabs = pretty ? Array(level + 1).fill('').join('\t') : '';
        
        let newLine = pretty ? '\n' : '';
        if (node.nodeType == 3)
            return (singleton ? '' : tabs) + node.textContent.trim() + (singleton ? '' : newLine)
        
        if (!node.nodeName)
            return XML.toString(node.firstChild, pretty);
        
        let output = tabs + `<${node.nodeName.toLowerCase()}`; // >\n

        if ((<Element>node).attributes)
        {
            for (let i = 0; i < (<Element>node).attributes.length; i++)
                output += ` ${(<Element>node).attributes[i].name}="${(<Element>node).attributes[i].value}"`;
        }

        if (node.childNodes.length == 0)
            return output + ' />' + newLine;
        else
            output += '>';
        
        let onlyOneTextChild = ((node.childNodes.length == 1) && (node.childNodes[0].nodeType == 3));
        if (!onlyOneTextChild)
            output += newLine;

        for (let i = 0; i < node.childNodes.length; i++)
            output += XML.toString(node.childNodes[i], pretty, level + 1, onlyOneTextChild);
        
        return output + (onlyOneTextChild ? '' : tabs) + `</${node.nodeName.toLowerCase()}>` + newLine;
    }
}



function autorun()
{
    console.log("document ready");

    let table = document.querySelector("body > table")
    console.log("table", table);
    let it:IChecklistData = iterator(table);
    // console.log(JSON.stringify(it, null, "  "));
    let t2 = <HTMLElement>tabulator(it);
    console.log("out", t2);
    // document.body.append(t2);
    // console.log(Replace(new XMLSerializer().serializeToString(t2), ' xmlns="http://www.w3.org/1999/xhtml"', '' ))
    
    console.log(XML.prettify(t2));

    // var hu = require<IHttpUtility>("./HttpUtility.js");

    let b = hu.htmlEncode("הצü<>[]{}nihao")
    let c = hu.htmlDecode(b);
    console.log(c);
}

if (document.addEventListener) document.addEventListener("DOMContentLoaded", autorun, false);
else if (document.attachEvent) document.attachEvent("onreadystatechange", autorun);
else window.onload = autorun;
