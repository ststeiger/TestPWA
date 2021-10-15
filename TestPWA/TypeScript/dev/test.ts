
"use strict";

import * as hu from "./HttpUtility.js";
import * as xml from "./XmlBeautifier.js";
import * as uuid from "./uuid.js";

// let hu: IHttpUtility = require<IHttpUtility>("./HttpUtility.js")
// let hu: IHttpUtility = null;
// let xml = require<IXmlBeautifier>("./XmlBeautifier.js");
// let xml: IXmlBeautifier = null;
// let uuid = require<IUUID>("./uuid.js");
// let uuid: IUUID = null;


// do polyfills immediately on script-load
if (true)
{
    // aff = require<IHttpUtility>("./HttpUtility.js")
}


function left(str: string, length?: number)
{
    if (!str) return str;
    return str.substr(0, length);
}

function right(str: string, length?: number)
{
    if (!str) return str;
    return str.substr(-length);
}


function ltrim(str:string)
{
    if (!str) return str;
    return str.replace(/^[\s\uFEFF\xA0]+/g, '');
}

function rtrim(str: string)
{
    if (!str) return str;
    return str.replace(/[\s\uFEFF\xA0]+$/g, '');

}

function trimStr(str: string)
{
    if (!str) return str;
    return str.replace(/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g, '');
}


function replace(str: string, oldToken: string[] | string, newToken?: string, ignoreCase?: boolean)
{
    if (Array.isArray(oldToken))
    {
        for (let i = 0; i < oldToken.length; ++i)
        {
            str = replace(str, oldToken[i], newToken, ignoreCase);
        }

        return str;
    }

    newToken = newToken || "";
    ignoreCase = ignoreCase || false;

    if (!str || !oldToken)
        return str;

    if ((ignoreCase ? oldToken.toLowerCase() : oldToken) == (ignoreCase ? newToken.toLowerCase() : newToken))
        return str;

    let foundAt = 0;
    let ci = (ignoreCase ? oldToken.toLowerCase() : oldToken)
    while ((foundAt = ((ignoreCase ? str.toLowerCase() : str)).indexOf(ci, foundAt)) != -1)
    {
        str = str.substr(0, foundAt) + newToken + str.substr(foundAt + oldToken.length);
        foundAt += newToken.length;
    }

    return str;
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


interface IXmlStructure
{
    uuid: string;
    parent_uuid?: string;
    tagName: string;
    properties: string[][];
    innerHtml?: string;
    children: IXmlStructure[];
}


function collectStructure(p: Node, parent?: string)
{
    if (p == null)
        return;

    parent = parent || null;

    let children: Node[] = Array.prototype.slice.call(p.childNodes);
    let guid = uuid.newGuid();

    let checklistData: IXmlStructure = {
         "uuid": guid 
        ,"parent_uuid": parent
        ,"tagName": p.nodeName 
        ,"properties": getProperties(<Element>p)
        ,"children": []
    };
    
    if (p.nodeName.toLowerCase() === "td")
    {
        checklistData.innerHtml = (<Element>p).innerHTML;
    }
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
                // console.log(cur.textContent);
            }
            else if (cur.nodeType === Node.ELEMENT_NODE) 
            {
                // console.log("cur", cur);
                // console.log("cur.nodeName", cur.nodeName);
                // console.log("cur.nodeValue", cur.nodeValue);
                // console.log("cur.getProperties", getProperties(<Element>cur));

                let ret = collectStructure(cur, guid);
                checklistData.children.push(ret);
            }
            else
            {
                console.log("unhandeld node", cur.nodeType);
            }

        } // Next i 

    } // End if (children.length) 

    return checklistData;
} // End Sub iterator


function createElement(ed: IXmlStructure)
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


function assemblyStructure(obj: IXmlStructure, parent?: Node)
{
    parent = parent || document.createDocumentFragment();
    let a = createElement(obj);
    
    for (let i = 0; i < obj.children.length; ++i)
    {
        assemblyStructure(obj.children[i], a);
    }

    parent.appendChild(a);

    return parent;
}

function getErrorObject()
{
    try { throw Error('') } catch (err) { return err; }
}


function getScriptName():string
{
    let error = getErrorObject() // new Error()
        , source
        , lastStackFrameRegex = new RegExp(/.+\/(.*?):\d+(:\d+)*$/)
        , currentStackFrameRegex = new RegExp(/getScriptName \(.+\/(.*):\d+:\d+\)/);
    
    if (error.stack && (source = lastStackFrameRegex.exec(error.stack.trim())) && source[1] != "")
        return source[1];
    else if (error.stack && (source = currentStackFrameRegex.exec(error.stack.trim())))
        return source[1];
    else if ((<any>error).fileName != undefined)
        return (<any>error).fileName;

    // let cs = document.currentScript || document.scripts[document.scripts.length - 1];
    // let src = cs.getAttribute("src");
    // let bs = cs.baseURI;
    // return cs.getAttribute("src");
    return null;
}


// https://localhost:44314/ts/require/require.js?v=1
// https://localhost:44314/vertical_text.htm
// https://localhost:44314/Schuettgutcontainer.htm
function autorun(): void
{
    console.log("document ready");
    
    // console.log("scriptName", getScriptName());
    // console.log("scriptName", console.trace());
    


    console.log("translate data", JSON.stringify(getValues(), null, "  "));

    let table = document.querySelector("body > table")
    // console.log("table", table);


    let harvest: IXmlStructure = collectStructure(table);
    // console.log(JSON.stringify(harvest, null, "  "));


    let obj = require("./mydata.js");
    console.log("obj", obj);

    // Zusammensetzen:
    let t2 = <HTMLElement>assemblyStructure(harvest);
    // console.log("out", t2);
    // document.body.append(t2);

    // console.log(replace(new XMLSerializer().serializeToString(t2), ' xmlns="http://www.w3.org/1999/xhtml"', '' ))
    // console.log(XML.prettify(t2));

    // let XML = require<IXmlBeautifier>("./XmlBeautifier.js"); 
    // let hu = require<IHttpUtility>("./HttpUtility.js"); 

    // let b = hu.htmlEncode("הצü<>[]{}nihao")
    // let c = hu.htmlDecode(b);
    // console.log(c);
}

if (document.addEventListener) document.addEventListener("DOMContentLoaded", autorun, false);
else if (document.attachEvent) document.attachEvent("onreadystatechange", autorun);
else window.onload = autorun;
