
"use strict";

import * as autobind_autotrace from "./autobind_autotrace.js";
import * as autorun from "./autorun.js";
import * as utils from "./string_utils.js";
import * as hu from "./http_utility.js";
import * as xml from "./xml_beautifier.js";
import * as uuid from "./uuid.js";
import * as linq from "./linq.js";
import { TableWrapper as tableWrapper, GroupedTableWrapper as groupedTableWrapper, GroupedData } from "./table_wrapper.js";
import * as db_html from "./db_html.js";
import * as translations from "./translations.js";
import * as url_params from "./url_params.js";



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


async function postFetch(url: string, payload?: any): Promise<Response>
{
    let bdy: string = null;

    if (typeof (payload) === 'string' || payload instanceof String)
        bdy = <string>payload;

    if (typeof (payload) === 'object')
        bdy = JSON.stringify(payload);

    if (url.indexOf("?") != -1)
    {
        url += "&"
    }
    else
        url += "?"

    url += "no_cache=" + (new Date()).getTime().toString();

    let result = await fetch(url, {
        method: 'POST',
        headers: {
            "Accept": "application/json"
            , "Content-Type": "application/json"
            , "credentials": "same-origin" // the default would be same-origin, but there's an exciting Edge-bug ... 
            , "pragma": "no-cache"
            , "cache-control": "no-cache"
        }
        , body: bdy
    });

    return result;
}



async function fetchJSON(url: string, payload?: any): Promise<any>
{
    if (url.indexOf("?") != -1)
    {
        url += "&"
    }
    else
        url += "?"

    url += "no_cache=" + (new Date()).getTime().toString();

    let result = await postFetch(url, payload);
    let data: any = await result.json();
    return data;
}


async function fetchText(url: string, payload?: any): Promise<string>
{
    if (url.indexOf("?") != -1)
    {
        url += "&"
    }
    else
        url += "?"

    url += "no_cache=" + (new Date()).getTime().toString();

    let result = await postFetch(url, payload);
    let data: string = await result.text();
    return data;
}


async function loadChecklistValues(cl_uid?:string)
{
    cl_uid = cl_uid || "F1A2DD8A-2D11-496E-9B14-13559405089F";

    let checkListData: any = await fetchJSON("../ajax/AnySelect.ashx?sql=Checklist2.LoadChecklist.sql&format=1&__cl_uid=" + cl_uid)
    let checklistValues = new tableWrapper<IT_Checklist_ZO_ElementValues>(checkListData.tables[0].columns, checkListData.tables[0].rows, false);
    // console.log("checklistValues", checklistValues);

    for (let i = 0; i < checklistValues.rowCount; ++i)
    {
        let ele = document.getElementById(checklistValues.row(i).CLV_ELE_UID);
        if (!ele)
            continue;

        let type = (ele.getAttribute("type") || "").toLowerCase();
        if ("checkbox" === type)
        {
            (<HTMLInputElement>ele).checked = (checklistValues.row(i).CLV_Value === 'true');
        }
        else if ("text" === type)
        {
            (<HTMLInputElement>ele).value = checklistValues.row(i).CLV_Value;
        }
        else if ("textarea" === ele.nodeName.toLowerCase())
        {
            (<HTMLInputElement>ele).value = checklistValues.row(i).CLV_Value;
        }
    }


}


async function assertSession()
{
    try
    {
        // this sets the session cookie if it isn't there. 
        // this prevents bug in ASP.NET framework 
        let txt = await fetchText("../ajax/CurrentSession.ashx");
    }
    catch (err: any)
    { } // Do nothing 
}



// https://localhost:44314/ts/require/require.js?v=1
// https://localhost:44314/vertical_text.htm
// https://localhost:44314/Schuettgutcontainer.htm
async function onDocumentReady(): Promise<any>
{
    let _: any = {
          "autobind_autotrace": autobind_autotrace
        , "autorun": autorun
        , "hu": hu
        , "linq": linq
        , "tr": tableWrapper
        , "tra": translations
        , "up": url_params
        , "utils": utils
        , "uuid": uuid
        
        ,"xml": xml
    }; // goddamn, if not used, it's not imported ...


    console.log("document ready");
    // console.log("scriptName", console.trace());

    // console.log("translate data", JSON.stringify(translations.getTranslateData(), null, "  "));

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


    let params = url_params.parseQuery(document.location.href)
    console.log("query params", params);
    // params.get("uid")


    await assertSession();
    let checkListData: any = await fetchJSON("../ajax/AnySelect.ashx?sql=Checklist2.GetChecklistData.sql&format=1&__cl_uid=F1A2DD8A-2D11-496E-9B14-13559405089F");

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

    console.log("starting iteration:");
    db_html.iterateOverStructure(argh);
    


    let arghHtml = <HTMLElement>db_html.assembleStructure(argh);
    // console.log(argh, arghHtml);
    document.body.appendChild(arghHtml);

    // Listen for the event.
    document.addEventListener('saveChecklist',
        async function (e:Event)
        {
            let cls_uid = uuid.newGuid();

            // e.target matches elem
            let saveData = db_html.collectSaveData(document.querySelector("table"), cls_uid);
            console.log("saveData", saveData);
            console.log("saveData",  saveData.filter(function (x) { return "46842fd6-a7c4-4156-8b54-29265b4e1648" === x.uuid; })   );

            await assertSession();
            await fetchJSON("../ajax/anyInsert.ashx?sql=Checklist2.SaveChecklistDataSet.sql", { "__cls_uid": cls_uid, "__cls_cl_uid": "F1A2DD8A-2D11-496E-9B14-13559405089F" });
            let saveResult = await fetchJSON("../ajax/anyInsert.ashx?sql=Checklist2.SaveChecklistData.sql", saveData);
            console.log("saveResult", saveResult);
        }
        , false
    );

    await loadChecklistValues();
} // End Function onDocumentReady 


export function main()
{
    autorun.documentReady(onDocumentReady);
}
