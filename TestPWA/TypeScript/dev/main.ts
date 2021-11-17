
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



enum FontStyle
{
    Regular = 0,
    Bold = 1,
    Italic = 2,
    Underline = 4,
    Strikeout = 8
}

// https://cordemo.cor-asp.ch/COR_Basic_Demo_V4/cgi-bin/GenerateImage.ashx?no_cache=1636308667021&bgcolor=%23FFF&rotate=true&text=COR_ObjektRechte%0D%0ASchreiben
// <div style="background-image: url(&quot;cgi-bin/GenerateImage.ashx?no_cache=1636450422429&amp;bgcolor=%233D3D3D&amp;rotate=true&amp;text=COR_PortfolioRechte_Alle&quot;);"></div>
// Create the Font object for the image text drawing.
// using(System.Drawing.Font fntThisFont = new System.Drawing.Font(strFontFamily, fontSize, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Pixel))
enum GraphicsUnit
{
    World = 0,
    Display = 1,
    Pixel = 2,
    Point = 3,
    Inch = 4,
    Document = 5,
    Millimeter = 6
}






function addStylesheet(url:string)
{
    let h = document.getElementsByTagName("head")[0];
    
    if (url.indexOf("?") != -1)
    {
        url += "&"
    }
    else
        url += "?"

    url += "no_cache=" + (new Date()).getTime().toString();

    let ss = document.createElement("LINK");
    ss.setAttribute("rel", "stylesheet");
    ss.setAttribute("href", url);

    h.appendChild(ss);
}



// do polyfills immediately on script-load
if (true)
{
    // aff = require<IHttpUtility>("./http_utility.js")

    addStylesheet("css/checklist.css");
    addStylesheet("../css/Scrolling/Scrollbar.css?v=1");
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


//function foo()
//{
//    for (var i = 0; i < arguments.length; i++)
//    {
//        console.log(arguments[i]);
//    }
//}


function concat(...args: any[]):string
{
    let a:string[] = [];

    for (let i = 0; i < args.length; i++)
    {
        if(args[i] != null)
            a.push(String(args[i])); // warning: String(null) yields "null" + dito for undefined ...
    }

    return a.join("");
}



async function loadChecklistValues(cl_uid:string)
{
    let checkListData = <IAjaxResult<any>>await fetchJSON(concat("../ajax/AnySelect.ashx?sql=Checklist2.LoadChecklist.sql&format=1&__cl_uid=", cl_uid))
    let checklistValues = new tableWrapper<IT_Checklist_ZO_ElementValues>(checkListData.data.tables[0].columns, checkListData.data.tables[0].rows, false);
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

async function startWaiting(timeout?: number)
{
    if (window.top.Portal && window.top.Portal.Global && window.top.Portal.Global.Waiting && window.top.Portal.Global.Waiting.Start)
    {
        window.setTimeout(function ()
        {
            window.top.Portal.Global.Waiting.Start();
        }, timeout || 20);
    }
}


async function stopWaiting(timeout?:number)
{
    if (window.top.Portal && window.top.Portal.Global && window.top.Portal.Global.Waiting && window.top.Portal.Global.Waiting.Stop)
    {
        window.setTimeout(function ()
        {
            window.top.Portal.Global.Waiting.Stop();
        }, timeout || 1500);
    }

}



function saveChecklist(cl_uid?:string)
{
    startWaiting();
    
    // alert("saving CL: " + cl_uid);
    // let evt = document.createEvent('Event');
    // evt.initEvent('saveChecklist', true, true);

    // https://caniuse.com/?search=CustomEvent
    // https://stackoverflow.com/questions/9417121/is-there-any-way-of-passing-additional-data-via-custom-events
    let evt = document.createEvent('CustomEvent');
    evt.initCustomEvent('saveChecklist', false, false, { "cl_uid": cl_uid });

    // Dispatch an event
    // window.dispatchEvent(evt);
    document.dispatchEvent(evt);
}


function setText(el: HTMLElement, text:string)
{
    if (!el)
        return;

    el.appendChild(document.createTextNode(text));
}


function setUser(foot: HTMLDivElement, proc: string, chlist: string)
{
    if (!foot)
        return;
    
    let old = document.getElementById("usr");
    if (old != null)
        old.parentNode.removeChild(old);

    let span = document.createElement("span");
    span.setAttribute("id", "usr");
    span.setAttribute("class", "username");

    if (window.top.Portal && window.top.Portal.Session && window.top.Portal.Session.Name)
    {
        setText(span, window.top.Portal.Session.Name());
    }
    else
        // setText("привет мир 你好世界");
        setText(span, "Albert Rösti");

    foot.appendChild(span);
}


function setButtons(foot:HTMLDivElement, proc: string, chlist: string)
{
    if (!foot)
        return;

    let footer = [
        , '<span id="usr" class="username">&nbsp;</span>'
    ];


    // if (window.parent.parent.Redirects && typeof(window.parent.parent.Redirects.closePage) == 'function')
    if(true)
    {
        // footer.push('<input id="btn_ftrCancel" name="btn_ftrCancel"  onclick="document.querySelector(\'[id$=\\\'ifrmFormTemplate\\\']\').contentWindow.BD.footer.cancel(); return false;" type="submit" style="float:right; margin-right: 1px;" value="Abbrechen">');
        // footer.push('<input id="btn_ftrNew" name="btn_ftrNew" onclick="document.querySelector(\'[id$=\\\'ifrmFormTemplate\\\']\').contentWindow.COR.Basic.SIBE.footer.save(); return false;" type="submit" style="float:right; margin-right: 1px;" value="Speichern">');
        footer.push('<input id="btn_ftrNew" name="btn_ftrNew" onclick="document.querySelector(\'[id$=\\\'ifrmFormTemplate\\\']\').contentWindow.COR.Basic.SIBE.footer.save(); return false;" type="submit" style="float:right; margin-right: 1px;" value="Speichern">');
    }


    let oldButton = document.getElementById("btn_ftrNew");
    if (oldButton != null)
        oldButton.parentNode.removeChild(oldButton);

    // foot.insertAdjacentHTML('beforeend', footer.join(""));
    



    let ele = document.createElement("INPUT");
    ele.setAttribute("id", "btn_ftrNew");
    ele.setAttribute("name", "btn_ftrNew");
    ele.setAttribute("onclick", "saveChecklist();");
    ele.setAttribute("type", "submit");
    ele.setAttribute("style", "float:right; margin-right: 1px;");
    ele.setAttribute("value", "Speichern");

    (<any>window).saveChecklist = saveChecklist.bind(ele, chlist);
    foot.appendChild(ele);

    // let fB = document.getElementById.bind(foot.ownerDocument);
    // fB("btn_ftrSave").value = "Speichern";
    // fB("btn_ftrCancel").value = "Abbrechen";
    // fB("btn_ftrNew").value = "Newly";
}


function setFooter(proc: string, chlist: string)
{
    let foot = <HTMLDivElement>document.getElementById("buttonFrame");
    setUser(foot, proc, chlist);
    setButtons(foot, proc, chlist);
}


function clearHtmlElementContents(el:HTMLElement)
{
    while (el.lastChild)
    {
        el.removeChild(el.lastChild);
    }
}



// https://localhost:44314/ts/require/require.js?v=1
// https://localhost:44314/vertical_text.htm
// https://localhost:44314/Schuettgutcontainer.htm
async function onChecklistChanged(proc:string, chlist:string): Promise<void>
{
    startWaiting();

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


    // console.log("document ready");
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

    setFooter(proc, chlist);
    

    await assertSession();

    // let checkListData = <IAjaxResult<any>>await fetchJSON("../ajax/AnySelect.ashx?sql=Checklist2.GetChecklistData.sql&format=1", {"__cl_uid": chlist} );
    // while this changes NULL into "", it has the advantage that a catchable error is produced if chlist is NULL 
    let checkListData = <IAjaxResult<any>>await fetchJSON(concat("../ajax/AnySelect.ashx?sql=Checklist2.GetChecklistData.sql&format=1&__cl_uid=", chlist));
    if (checkListData.hasError)
    {
        alert("Error loading checklist-data:\r\n" + checkListData.error.message);
        return;
    }


    // console.log(checkListData.tables[0]);
    let checklistName = new tableWrapper<IT_Checklist>(checkListData.data.tables[0].columns, checkListData.data.tables[0].rows, false);
    // console.log("checklistName", checklistName.columns);
    let elements = new tableWrapper<IT_ChecklistElements>(checkListData.data.tables[1].columns, checkListData.data.tables[1].rows, false);
    // console.log("elements", elements.columns);
    let elemntProps = new tableWrapper<IT_Checklist_ZO_ElementProperties>(checkListData.data.tables[2].columns, checkListData.data.tables[2].rows, false);
    // console.log("elemntProps", elemntProps.columns);


    let checkListHeader: HTMLHeadElement = document.getElementById("checkListTitle");

    // Schüttgutcontainer
    if (checklistName.rowCount > 0)
    { 
        document.title = checklistName.row(0).CL_Name
        checkListHeader.innerText = checklistName.row(0).CL_Title
    }
    
    let htmlInfo = db_html.constructRecursiveDataStructure(elements, elemntProps.groupBy("PRO_ELE_UID"));

    // console.log("Assess data quality:");
    // db_html.iterateOverStructure(htmlInfo);
    

    let assembledFragment = <HTMLElement>db_html.assembleStructure(htmlInfo);
    // console.log("assembledFragment", assembledFragment);
    // document.body.appendChild(assembledFragment);


    
    let tChecklist = document.getElementById("tChecklist")
    clearHtmlElementContents(tChecklist);
    tChecklist.appendChild(assembledFragment);
    

    // document.body.insertBefore(assembledFragment, checkListHeader.nextSibling);

    
    

    // Listen for the event.
    if (!(<any>document).listensForSave)
    document.addEventListener('saveChecklist',
        async function (e:CustomEvent)
        {
            let cls_uid = uuid.newGuid();
            // console.log("saveChecklist->e.detail.cl_uid: ", e.detail.cl_uid);

            // e.target matches elem
            let saveData = db_html.collectSaveData(document.querySelector("table"), cls_uid);
            // console.log("saveData", saveData);
            // console.log("saveData",  saveData.filter(function (x) { return "46842fd6-a7c4-4156-8b54-29265b4e1648" === x.uuid; })   );

            await assertSession();
            let saveDataSetResult = <IAjaxResult<any>>await fetchJSON("../ajax/anyInsert.ashx?sql=Checklist2.SaveChecklistDataSet.sql",
                { "__cls_uid": cls_uid, "__cls_cl_uid": e.detail.cl_uid }
            );

            console.log("dataSetResult", saveDataSetResult);
            if (saveDataSetResult.hasError === false)
            {
                let saveChecklistDataResult = <IAjaxResult<any>>await fetchJSON("../ajax/anyInsert.ashx?sql=Checklist2.SaveChecklistData.sql", saveData);
                
                if (saveDataSetResult.hasError === false)
                {
                    console.log("saveResult", saveChecklistDataResult);
                }
                else
                {
                    alert(saveChecklistDataResult.error.message);
                }
            }
            else
            {
                alert(saveDataSetResult.error.message);
            }

            stopWaiting();
        }
        ,false
    );

    (<any>document).listensForSave = true;
    await loadChecklistValues(chlist);

    stopWaiting(400);
} // End Function onDocumentReady 

function checkOrigin(event: MessageEvent):boolean
{
    let ret = false;;
    let message;

    if (!origin.toLowerCase().startsWith("https://localhost:") && !origin.toLowerCase().startsWith("https://localhost/"))
    {
        message = 'You ("' + event.origin + '") are not worthy';
        ret = true;
    }
    else
    {
        message = 'I got "' + event.data + '" from "' + event.origin + '"';
    }

    console.log(message);
    return ret;
}


async function receiveMessage(event: MessageEvent)
{
    // console.log("receiveMessage", event);
    if (event == null || event.data == null)
    {
        console.log("no event or no data", event);
        return;
    }

    let tData = null;
    // if (!checkOrigin(event)) return;

    try
    {
        tData = (typeof event.data === 'string') ? JSON.parse(event.data) : event.data;
    }
    catch (ex)
    {
        console.log(ex, event);
        console.dir(event);
    }

    let tAction = (tData.Action || '').toLowerCase();
    
    // console.log(tData.Action + "->", event); 
    console.log(tData.Action + "->", JSON.stringify(tData, null, "  "));
    switch (tAction)
    {
        case 'portal.filter.loaded': // tab-gewechselt
            // REM: hat mich nicht zu interessieren, muss aber aus unerfindlichem Grund gesendet werden.
            spreadMessage({ "Action": "Portal.Filter.Enable" });
            break;
        case 'portal.basic.update': // tab-geladen oder gewechselt
            // console.log("Link-Target:", tData.Link);

            let urlInfo = url_params.parseQuery(tData.Link)
            // console.log("portal.basic.update->proc", urlInfo.get("proc"));
            // console.log("portal.basic.update->cl_uid", urlInfo.get("cl_uid"));
            onChecklistChanged(urlInfo.get("proc"), urlInfo.get("cl_uid"));
            spreadMessage({ "Action": "Portal.Filter.Enable" });
            break;
        case 'portal.filter.inprocess': // in-bearbeitung - Filter wurde gewechselt 
            // TODO: Aktion notwendig
            spreadMessage({ "Action": "Portal.Filter.Enable" });
            break;
        case 'portal.filter.enable':
            // REM: Vorsicht - Eintritt in "default" verhindern- Unendlich-Rekursion ! 
            break;
        default:
            // console.log("unhandled event", event);
            console.log("Unhandled event->", tData.Action);
            break;
    }

    // event.source.postMessage("thanks, got it ;)", event.origin);
} // End Function ReceiveMessage



function spreadMessage(object: any)
{
    if (inFrame)
    {
        window.top.Portal.Global.spreadMessage(object);
    }
    else
    {
        window.postMessage(JSON.stringify(object), '*');
    }
}


function setMessageListener()
{
    if (window.removeEventListener)
        window.removeEventListener("message", receiveMessage, false);
    else
        window.detachEvent("onmessage", receiveMessage);


    if (!window['postMessage'])
        alert("oh crap");
    else
    {
        if (window.addEventListener)
        {
            // console.log("listening for message...");
            window.addEventListener("message", receiveMessage, false);
        }
        else
        {
            // console.log("listening for IE message...");
            window.attachEvent("onmessage", receiveMessage);
        }
    }

}


function isInlineFrame():boolean
{
    try
    {
        return window.self !== window.top;
    }
    catch (e)
    {
        return true;
    }
}


async function onDocumentReady(): Promise<void>
{
    let params = url_params.parseQuery(document.location.href)
    // console.log("query params", params);

    let chlist = params.get("cl_uid");
    // console.log("chlist", chlist);

    onChecklistChanged(null, chlist);
}


let inFrame = isInlineFrame();
setMessageListener(); // Execute immediately 


function dispatchBasicUpdate()
{
    let msg =
    {
        "Action": "Portal.Basic.Update",
        "Link": document.location.href
    };

    spreadMessage(msg);
}


export function main()
{
    if(!isInlineFrame())
    {
        // console.log("dispatching event");
        dispatchBasicUpdate();
    }

    // autorun.documentReady(onDocumentReady);
}
