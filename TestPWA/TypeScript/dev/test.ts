
"use strict";

import * as hu from "./HttpUtility.js";
import * as xml from "./XmlBeautifier.js";
import * as uuid from "./uuid.js";
import * as linq from "./linq.js";
import * as autobind_autotrace from "./autobind_autotrace.js";
// https://stackoverflow.com/questions/39282253/how-can-i-alias-a-default-import-in-javascript
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/import
import { TableWrapper as tableWrapper, GroupedTableWrapper as groupedTableWrapper } from "./TableWrapper.js";



// let hu: IHttpUtility = require<IHttpUtility>("./HttpUtility.js")
// let hu: IHttpUtility = null;
// let xml = require<IXmlBeautifier>("./XmlBeautifier.js");
// let xml: IXmlBeautifier = null;
// let uuid = require<IUUID>("./uuid.js");
// let uuid: IUUID = null;




interface IT_Checklist
{
    CL_UID: string;
    CL_Name: string;
}



interface IT_ChecklistElements
{
    ELE_UID: string;
    ELE_Parent_UID: string;
    ELE_CL_UID: string;
    ELE_TagName: string;
    ELE_InnerHtml: string;
}


interface IT_Checklist_ZO_ElementProperties
{

    PRO_UID: string;
    PRO_Name: string;
    PRO_Value: string;
    PRO_ELE_UID: string;
}



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



function getTranslateData()
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
    sort: number;
}


function collectStructure(p: Node, parent?: string, sort?:number)
{
    if (p == null)
        return;

    parent = parent || null;
    sort = sort || 0;

    let children: Node[] = Array.prototype.slice.call(p.childNodes);
    let guid = uuid.newGuid();

    let checklistData: IXmlStructure = {
         "uuid": guid 
        ,"parent_uuid": parent
        ,"tagName": p.nodeName 
        ,"properties": getProperties(<Element>p)
        , "children": []
        , "sort": sort
    };

    if (p.nodeName.toLowerCase() === "td")
    {
        checklistData.innerHtml = (<Element>p).innerHTML;
    }
    else 
    if (children.length)
    {

        let childSort = 0;

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
                let ret = collectStructure(cur, guid, childSort++);
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


function createElement(data: IXmlStructure)
{
    let el = document.createElement(data.tagName);
    for (let i = 0; i < data.properties.length; ++i)
    {
        el.setAttribute(data.properties[i][0], data.properties[i][1]);
    }

    if (data.innerHtml)
        el.innerHTML = data.innerHtml;
    
    return el;
}


function assembleStructure(container: IXmlStructure, parent?: Node)
{
    parent = parent || document.createDocumentFragment();
    let a = createElement(container);
    
    for (let i = 0; i < container.children.length; ++i)
    {
        assembleStructure(container.children[i], a);
    }

    parent.appendChild(a);

    return parent;
}


// https://localhost:44314/ts/require/require.js?v=1
// https://localhost:44314/vertical_text.htm
// https://localhost:44314/Schuettgutcontainer.htm
async function autorun(): Promise<any>
{
    let _: any = {
         "linq": linq 
        , "autobind_autotrace": autobind_autotrace
    }; // goddamn, if not used, it's not imported ...


    console.log("document ready");
    // console.log("scriptName", console.trace());
    
    console.log("translate data", JSON.stringify(getTranslateData(), null, "  "));

    let table = document.querySelector("body > table")
    // console.log("table", table);


    let harvest: IXmlStructure = collectStructure(table);
    // console.log(JSON.stringify(harvest, null, "  "));


    // let obj = require("./mydata.js");
    // console.log("obj", obj);

    // Zusammensetzen:
    let t2 = <HTMLElement>assembleStructure(harvest);
    // console.log("out", t2);
    // document.body.append(t2);

    // console.log(replace(new XMLSerializer().serializeToString(t2), ' xmlns="http://www.w3.org/1999/xhtml"', '' ))
    // console.log(XML.prettify(t2));

    // let XML = require<IXmlBeautifier>("./XmlBeautifier.js"); 
    // let hu = require<IHttpUtility>("./HttpUtility.js"); 

    // let b = hu.htmlEncode("הצü<>[]{}nihao")
    // let c = hu.htmlDecode(b);
    // console.log(c);


    let fetchSingleChecklist = await fetch("https://localhost:44314/ajax/AnySelect.ashx?sql=GetChecklistData.sql&format=1");

    // let checkListDatat: any = await fetchSingleChecklist.text();
    // console.log("checkListDatat", checkListDatat);
    
    let checkListData: any = await fetchSingleChecklist.json();
    // console.log(checkListData.tables[0]);
    // console.log(checkListData.tables[1]);
    // console.log(checkListData.tables[2]);

    
    // let tab: TableWrapper<ITestTable1> = new TableWrapper<ITestTable1>(["col1", "col2"], [[1, 2], [3, 4]]);
    // tab.columns=["col1","col2", "col3"];


    // console.log(checkListData.tables[0]);
    let checklistName = new tableWrapper<IT_Checklist>(checkListData.tables[0].columns, checkListData.tables[0].rows, false);
    // console.log("checklistName", checklistName.columns);
    let elements = new tableWrapper<IT_ChecklistElements>(checkListData.tables[1].columns, checkListData.tables[1].rows, false);
    // console.log("elements", elements.columns);
    let elemntProps = new tableWrapper<IT_Checklist_ZO_ElementProperties>(checkListData.tables[2].columns, checkListData.tables[2].rows, false);
    // console.log("elemntProps", elemntProps.columns);

    
    if(false)
    for (let i = 0; i < checklistName.rowCount; ++i)
    {
        console.log("hi.columnCount", checklistName.columnCount);

        for (let j = 0; j < checklistName.columnCount; ++j)
        {
            console.log("i", i, "j", j);

            // console.log(checklistName.rows[i][j]);
            // console.log(checklistName.row(i)["CL_Name"]);
            console.log("Name:", checklistName.row(i).CL_Name, "CL_UID:", checklistName.row(i).CL_UID);
        }

    }

    for (let i = 0; i < elements.rowCount; ++i)
    {
        // console.log(elements.row(i).ELE_UID);
        // console.log(elements.row(i).ELE_Parent_UID);
        // console.log(elements.row(i).ELE_TagName);
        // console.log(elements.row(i).ELE_InnerHtml);
    }


    let groupedElements = elements.groupBy("ELE_Parent_UID");
    

    let aaa = groupedElements.getGroup("0b17226e-9722-4c2e-ac50-b36eab66e4f3");
    

    for (let i = 0; i < aaa.rows.length; ++i)
    {
        console.log("group row", aaa.row(i).ELE_UID);
    }

    

    /*
    console.log("grouped by", linq.groupBy(elements.rows,
        function (x: any)
        {
            return x[elements.getIndex("ELE_Parent_UID")]
        }
    ));
    */


    if (false)
    for (let i = 0; i < elemntProps.rowCount; ++i)
    {
        // // console.log(elemntProps.row(i).PRO_UID);
        // console.log(elemntProps.row(i).PRO_ELE_UID);
        // console.log(elemntProps.row(i).PRO_Name);
        // console.log(elemntProps.row(i).PRO_Value);
    }

    // https://localhost:44314/ajax/AnySelect.ashx?sql=GetChecklistData.sql&format=1
    // xxx.tables[3]


}

if (document.addEventListener) document.addEventListener("DOMContentLoaded", autorun, false); 
else if (document.attachEvent) document.attachEvent("onreadystatechange", autorun); 
else window.onload = autorun; 
