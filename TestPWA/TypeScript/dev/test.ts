
"use strict";

import * as autobind_autotrace from "./autobind_autotrace.js";
import * as utils from "./string_utils.js";
import * as hu from "./http_utility.js";
import * as xml from "./xml_beautifier.js";
import * as uuid from "./uuid.js";
import * as linq from "./linq.js";
import { TableWrapper as tableWrapper, GroupedTableWrapper as groupedTableWrapper, GroupedData } from "./table_wrapper.js";
import * as db_html from "./db_html.js";

// https://stackoverflow.com/questions/39282253/how-can-i-alias-a-default-import-in-javascript
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/import


// let hu: IHttpUtility = require<IHttpUtility>("./http_utility.js")
// let hu: IHttpUtility = null;
// let xml = require<IXmlBeautifier>("./xml_beautifier.js");
// let xml: IXmlBeautifier = null;
// let uuid = require<IUUID>("./uuid.js");
// let uuid: IUUID = null;




// do polyfills immediately on script-load
if (true)
{
    // aff = require<IHttpUtility>("./http_utility.js")
}



function getTranslateData()
{
    // td:not([colspan])
    let eles = document.querySelectorAll('tr td[colspan="6"]');
    let arr = [];

    for (let i = 0; i < eles.length; ++i)
    {
        arr.push(utils.trim(eles[i].textContent));
    }

    return arr;
}



// https://localhost:44314/ts/require/require.js?v=1
// https://localhost:44314/vertical_text.htm
// https://localhost:44314/Schuettgutcontainer.htm
async function autorun(): Promise<any>
{
    let _: any = {
         "autobind_autotrace": autobind_autotrace
        ,"hu": hu
        ,"linq": linq
        , "tr": tableWrapper
        ,"uuid": uuid 
        ,"xml": xml
    }; // goddamn, if not used, it's not imported ...


    console.log("document ready");
    // console.log("scriptName", console.trace());
    
    // console.log("translate data", JSON.stringify(getTranslateData(), null, "  "));

    // let table = document.querySelector("body > table")
    // console.log("table", table);


    // let harvest: IXmlStructure = db_html.collectStructure(table);
    // console.log(JSON.stringify(harvest, null, "  "));

    // Zusammensetzen:
    // let t2 = <HTMLElement>db_html.assembleStructure(harvest);
    // console.log("out", t2);
    // document.body.append(t2);

    // console.log(replace(new XMLSerializer().serializeToString(t2), ' xmlns="http://www.w3.org/1999/xhtml"', '' ))
    // console.log(XML.prettify(t2));

    // let XML = require<IXmlBeautifier>("./xml_beautifier.js");
    // let hu = require<IHttpUtility>("./http_utility.js");

    // let b = hu.htmlEncode("äöü<>[]{}nihao")
    // let c = hu.htmlDecode(b);
    // console.log(c);


    let fetchSingleChecklist = await fetch("https://localhost:44314/ajax/AnySelect.ashx?sql=GetChecklistData.sql&format=1&__cl_uid=EB159A9C-E69F-49F4-B10E-3A4825973E46");

    // let checkListDatat: any = await fetchSingleChecklist.text();
    // console.log("checkListDatat", checkListDatat);
    
    let checkListData: any = await fetchSingleChecklist.json();

    // console.log(checkListData.tables[0]);
    let checklistName = new tableWrapper<IT_Checklist>(checkListData.tables[0].columns, checkListData.tables[0].rows, false);
    // console.log("checklistName", checklistName.columns);
    let elements = new tableWrapper<IT_ChecklistElements>(checkListData.tables[1].columns, checkListData.tables[1].rows, false);
    // console.log("elements", elements.columns);
    let elemntProps = new tableWrapper<IT_Checklist_ZO_ElementProperties>(checkListData.tables[2].columns, checkListData.tables[2].rows, false);
    // console.log("elemntProps", elemntProps.columns);


    // Schüttgutcontainer
    if(checklistName.rowCount > 0)
        document.title = checklistName.row(0).CL_Name

    
    let argh = db_html.constructRecursiveDataStructure(elements, elemntProps.groupBy("PRO_ELE_UID"));
    let arghHtml = <HTMLElement>db_html.assembleStructure(argh);
    console.log(argh, arghHtml);
    document.body.append(arghHtml);


    /*
    let groupedElements = elements.groupBy("ELE_Parent_UID");
    

    let rootElements = groupedElements.getGroup("18a4911b-9e3b-49a9-bfb2-801a94f39281");
    console.log("rootElements", rootElements);
    
    for (let i = 0; i < rootElements.rowCount; ++i)
    {
        let currentEle = rootElements.row(i).ELE_UID;
        console.log("currentEle", currentEle);
        let ceChildren = groupedElements.getGroup(currentEle);
        console.log("ceChildren", ceChildren.rowCount);
    }
    */

    
    

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
