
"use strict";

import * as autobind_autotrace from "./autobind_autotrace.js";
import * as autorun from "./autorun.js";
import * as utils from "./string_utils.js";
import * as hu from "./http_utility.js";
import * as xml from "./xml_beautifier.js";
import * as uuid from "./uuid.js";
import * as linq from "./linq.js";
import { TableWrapper as tableWrapper, GroupedTableWrapper as groupedTableWrapper, GroupedData } from "./table_wrapper.js";
import * as ajax from "./ajax.js";
import * as db_html from "./db_html.js";
import * as translations from "./translations.js";
import * as url_params from "./url_params.js";



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

    , "xml": xml
}; // goddamn, if not used, it's not imported ...


let onSaveChecklist: () => void;


async function assertSession()
{
    try
    {
        // this sets the session cookie if it isn't there. 
        // this prevents bug in ASP.NET framework 
        let txt = await ajax.fetchText("../ajax/CurrentSession.ashx");
    }
    catch (err: any)
    { } // Do nothing 
}


function getPortalData(): IPortalSessionData
{
    let userLanguage: AvailableLanguages = "de";
    let proc = "200CEB26807D6BF99FD6F4F0D1CA54D4";
    let userName = "A. Rösti";

    if (window.top.Portal && window.top.Portal.Session)
    {
        if (window.top.Portal && window.top.Portal.Session && window.top.Portal.Session.ID)
            proc = <AvailableLanguages>window.top.Portal.Session.ID();

        if (window.top.Portal && window.top.Portal.Session && window.top.Portal.Session.Language)
            userLanguage = <AvailableLanguages>window.top.Portal.Session.Language().toLowerCase();

        if (window.top.Portal && window.top.Portal.Session && window.top.Portal.Session.Name)
            userName = <AvailableLanguages>window.top.Portal.Session.Name();
    }

    return {
        userLanguage: userLanguage,
        proc: proc,
        userName: userName
    };
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


async function stopWaiting(timeout?: number)
{
    if (window.top.Portal && window.top.Portal.Global && window.top.Portal.Global.Waiting && window.top.Portal.Global.Waiting.Stop)
    {
        window.setTimeout(function ()
        {
            window.top.Portal.Global.Waiting.Stop();
        }, timeout || 1500);
    }

}


function clearHtmlElementContents(el: HTMLElement)
{
    while (el.lastChild)
    {
        el.removeChild(el.lastChild);
    }
}


function getSelectedRow(ev: MouseEvent)
{
    let row = (<Element>ev.currentTarget);
    
    while (row && !row.classList.contains("pu_content"))
    {
        row = row.parentElement;
    }

    return row;
}



function getPopopContainer(el:Element): Element 
{
    let popup = el;

    while (popup && !popup.classList.contains("Popup"))
    {
        popup = popup.parentElement;
    }

    return popup;
}




async function loadChecklistValues(cl_uid: string, cls_uid: string)
{
    let params = {
         "__cl_uid": cl_uid 
        ,"__cls_uid": cls_uid 
    };

    let checkListData = <IAjaxResult<any>>await ajax.fetchJSON("../ajax/AnySelect.ashx?sql=Checklist2.LoadChecklist.sql&format=1", params);
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


// If the background suddenly turns black and the font has to be switched to white for this, 
// you can no-longer see the text well, because the visibility of white on an almost-white background ...
function QuickFix_SNB_2021_FIXME()
{
    let badForegrounds: HTMLTableCellElement[] = Array.prototype.slice.call(document.querySelectorAll('td[bgcolor="#E7E6E6"]'));
    let badBackgrounds: HTMLTableCellElement[] = Array.prototype.slice.call(document.querySelectorAll('td[bgcolor="#EDEDED"]'));
    for (let i = 0; i < badBackgrounds.length; ++i)
    {
        badBackgrounds[i].setAttribute("bgcolor", "#5F5F5F");
    }

    for (let i = 0; i < badForegrounds.length; ++i)
    {
        let oldStyle = badForegrounds[i].getAttribute("style") || "";
        badForegrounds[i].setAttribute("style", oldStyle + "; color: #000;");
    }

}


// https://localhost:44314/ts/require/require.js?v=1
// https://localhost:44314/vertical_text.htm
// https://localhost:44314/Schuettgutcontainer.htm
async function loadChecklist(proc: string, cl_uid: string, cls_uid: string, withData: boolean): Promise<void>
{
    console.log("loadChecklist", proc, cl_uid);

    let mainContain = document.getElementById("mainContainer");
    if (!mainContain)
        return;

    clearHtmlElementContents(mainContain)

    let divOverview = document.createElement("DIV");
    divOverview.setAttribute("id", "tOverview");
    divOverview.setAttribute("style", "padding-top: 20px; max-width: 100%; height: calc(100% - 40px); overflow: auto;");

    let logo = document.createElement("IMG");
    logo.setAttribute("src", "images/SNB-Logo-blau.svg");
    logo.setAttribute("style", "fontwidth: 6cm;");
    // divOverview.appendChild(logo);   

    let checkListTitle = document.createElement("H2");
    checkListTitle.setAttribute("id", "checkListTitle");
    checkListTitle.setAttribute("style", "font-family: Arial; font-size: 14pt;");
    divOverview.appendChild(checkListTitle);   

    let br1 = document.createElement("BR");
    let br2 = document.createElement("BR");
    divOverview.appendChild(br1);
    divOverview.appendChild(br2);

    let divChecklist = document.createElement("DIV");
    divChecklist.setAttribute("id", "tChecklist");
    divOverview.appendChild(divChecklist);

    mainContain.appendChild(divOverview);


    startWaiting();


    // while this changes NULL into "", it has the advantage that a catchable error is produced if chlist is NULL 
    let clUrl = "../ajax/AnySelect.ashx?sql=Checklist2.GetChecklistData.sql&format=1"; //&__cl_uid=", cl_uid;
    let checkListData = <IAjaxResult<any>>await ajax.fetchJSON(clUrl, { "__cl_uid": cl_uid, "__cls_uid": cls_uid});
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

    console.log("checklistName", checklistName);


    let checkListHeader: HTMLHeadElement = document.getElementById("checkListTitle");

    // Schüttgutcontainer
    if (checklistName.rowCount > 0)
    {
        document.title = checklistName.row(0).CL_Name
        if (checkListHeader)
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
    onSaveChecklist =
        async function ()
        {
            let sess = <IBasicSession>await ajax.fetchJSON("../ajax/CurrentSession.ashx"); 
            let obj: IBasicObject = getObj(sess); 
            console.log(obj); 

            // while this changes NULL into "", it has the advantage that a catchable error is produced if chlist is NULL 
            let params: any = {
                  "__cls_uid": uuid.newGuid() 
                , "__cls_cl_uid": cl_uid 
                , "__cls_be_hash": proc
                , "__cls_obj_uid": ""
                , "__cls_objt_code": ""
                , "__cls_tsk_uid": ""
            };


            if (obj.OBJT_Code === "TSK")
            {
                params.__cls_tsk_uid = obj.OBJ_UID;
                params.__cls_obj_uid = null;
                params.__cls_objt_code = null;
            }
            else
            {
                params.__cls_tsk_uid = null;
                params.__cls_obj_uid = obj.OBJ_UID;
                params.__cls_objt_code = obj.OBJT_Code;
            }


            let cls_uid:string = params.__cls_uid;
            // console.log("saveChecklist->e.detail.cl_uid: ", e.detail.cl_uid);

            // e.target matches elem
            let saveData = db_html.collectSaveData(document.querySelector("table"), params.__cls_uid);
            // console.log("saveData", saveData);
            // console.log("saveData",  saveData.filter(function (x) { return "46842fd6-a7c4-4156-8b54-29265b4e1648" === x.uuid; })   );

            let saveDataSetResult = <IAjaxResult<any>>await ajax.fetchJSON("../ajax/anyInsert.ashx?sql=Checklist2.SaveChecklistDataSet.sql", params);

            console.log("dataSetResult", saveDataSetResult);
            if (saveDataSetResult.hasError === false)
            {
                let saveChecklistDataResult = <IAjaxResult<any>>await ajax.fetchJSON("../ajax/anyInsert.ashx?sql=Checklist2.SaveChecklistData.sql", saveData);

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
        };


    // Win32_QuickFixEngineering ...
    QuickFix_SNB_2021_FIXME();

    if (withData)
        await loadChecklistValues(cl_uid, cls_uid);

    stopWaiting(400);
} // End Function loadChecklist 




function onChecklistClose(ev: MouseEvent)
{
    // ev.target = clicked-on-element
    // ev.srcElement = alias for .target
    // ev.currentTarget = this

    // Event.currentTarget (https://developer.mozilla.org/en-US/docs/Web/API/Event/target)
    //   - It always refers to the element to which the event handler has been attached

    // Event.target (https://developer.mozilla.org/en-US/docs/Web/API/Event/currentTarget)
    //   - which identifies the element on which the event occurred

    let divChecklistsPopup = (<Element>ev.currentTarget).parentNode
    divChecklistsPopup.parentNode.removeChild(divChecklistsPopup);
}


// https://stackoverflow.com/questions/26855423/how-to-require-a-specific-string-in-typescript-interface
// https://dmitripavlutin.com/typescript-index-signatures/


type ChecklistTranslationItems = "OpenChecklist" | "NewChecklist" | "OverrideChecklistName" | "ChecklistStatus"
    | "LoadChecklistForEditing" | "DeleteEntry" | "Empty" | "SelectVersion";


function getTranslation(item: ChecklistTranslationItems, language?: AvailableLanguages):string
{
    if (!item)
        return "";

    if (!language)
        language = "de";

    language = <AvailableLanguages>language.toLowerCase();



    let i18n: TranslationEntries<ChecklistTranslationItems> = {
          "OpenChecklist": { "de": "Checkliste öffnen", "fr": "Ouvrir liste de contrôle", "it": "Apri lista di controllo", "en": "Open checklist" }
        , "NewChecklist": { "de": "Neue Checkliste", "fr": "Nouvelle liste de contrôle", "it": "Nuova lista di controllo", "en": "New checklist" }
        , "SelectVersion": { "de": "Version auswählen", "fr": "Sélectionnez version", "it": "Seleziona versione", "en": "Select version" }
        , "OverrideChecklistName": {
              "de": "Name\n    Durch das Überschreiben des Names in der Liste wird der Name der Checkliste geändert"
            , "fr": "Nom\n    L'écrasement du nom dans la liste modifie le nom de la liste de contrôle"
            , "it": "Nome\n    Sovrascrivendo il nome nella lista cambia il nome della checklist"
            , "en": "Name\n    Overwriting the name in the list changes the name of the checklist"
        }
        , "ChecklistStatus": {
              "de": "Status (aktiv | inaktiv)\n    Inaktive Checklisten sind nicht zuweisbar"
            , "fr": "Statut (actif | inactif)\n    Les listes de contrôle inactives ne peuvent pas être attribuées"
            , "it": "Stato (attivo | inattivo)\n    Non è possibile assegnare liste di controllo inattive"
            , "en": "Status (active | inactive)\n    Inactive checklists cannot be assigned"
        }
        , "LoadChecklistForEditing": {
              "de": "Laden\n    Gewählte Checkliste zum Bearbeiten Laden"
            , "fr": "Charger\n    Charger la liste de contrôle sélectionnée pour l'édition"
            , "it": "Carica\n    Carica la lista di controllo selezionata per la modifica"
            , "en": "Load\n    Load selected checklist for editing"
        }
        , "DeleteEntry": {
              "de": "Löschen\n    Gelöschte Checklisten erscheinen nach dem Schliessen des Fensters nicht mehr"
            , "fr": "Supprimer\n    Les listes de contrôle supprimées n'apparaissent plus après la fermeture de la fenêtre"
            , "it": "Elimina\n    Gli elenchi di controllo eliminati non vengono più visualizzati dopo la chiusura della finestra"
            , "en": "Delete\n    Deleted checklists no longer appear after the window is closed"
        }

        , "Empty": { "de": "", "fr": "", "it": "", "en": "" }
    };

    if (!i18n[item])
        return item;

    if (!i18n[item][language])
    {
        if (i18n[item]["de"])
            return i18n[item]["de"];

        return "";
    }
    
    return i18n[item][language]
}


async function onLoadNewChecklistDialogue(ev: MouseEvent)
{
    let popup = getPopopContainer(<Element>ev.currentTarget);
    popup.parentNode.removeChild(popup);
    //alert(ev.currentTarget);

    let pd: IPortalSessionData = getPortalData();

    // while this changes NULL into "", it has the advantage that a catchable error is produced if chlist is NULL 
    let params: any = {
        "__obj_uid": null,
        "__objt_code": null,
        "__tsk_uid": null
    };


    let urlAvailable = "../ajax/AnySelect.ashx?sql=Checklist2.GetAvailableChecklists.sql&format=1";
    // console.log(params);
    let allChecklistsData = <IAjaxResult<any>>await ajax.fetchJSON(urlAvailable, params);

    let allChecklists = new tableWrapper<IT_Checklist>(allChecklistsData.data.tables[0].columns, allChecklistsData.data.tables[0].rows, false);

    let openDialogue = await newChecklistDialogue(allChecklists, pd.userLanguage);
    document.getElementById("mainContainer").appendChild(openDialogue);
}




async function onDataSetSelected(ev: MouseEvent)
{
    let row = getSelectedRow(ev);
    let cls_uid = row.getAttribute("name");

    let popup = getPopopContainer(<Element>ev.currentTarget);
    popup.parentNode.removeChild(popup);

    let pd: IPortalSessionData = getPortalData();

    console.log("cls_uid", cls_uid);
    loadChecklist(pd.proc, null, cls_uid, true);
}



async function loadDataSetSelectionDialogue(checkListSets: tableWrapper<IDropDown>, cl_name:string): Promise<DocumentFragment>
{
    let userLanguage: AvailableLanguages = "de";
    let useClose: boolean = false;
    let useActiveInactive = false;
    let useDelete = false;
    let useLoad = true;
    let useNew = true;


    let ce = document.createElement;

    let fragment = document.createDocumentFragment();

    let divChecklistsPopup = document.createElement("DIV");
    divChecklistsPopup.setAttribute("id", "Checklists_Popup");
    divChecklistsPopup.setAttribute("class", "Popup noselect");
    divChecklistsPopup.setAttribute("tabindex", "1");
    divChecklistsPopup.setAttribute("style", "border: 1px solid black; background-color: rgb(102, 102, 102); box-sizing: border-box; box-shadow: rgb(0, 0, 0) 5px 5px 6px 0px; color: rgb(255, 255, 255); display: block; font-family: Arial, Helvetica, sans-serif; font-size: 11px; height: auto; left: 50%; margin-left: 0px; margin-right: 0px; max-height: 75%; max-width: 75%; min-width: 25%; overflow: hidden; position: absolute; top: 50%; width: 480px; z-index: 2000000000; transform: translate(-50%, -50%);");

    
    if (useClose)
    {
        let closeChecklistButton = document.createElement("DIV");
        closeChecklistButton.setAttribute("class", "closeImage");
        closeChecklistButton.setAttribute("style", "background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHMSURBVHjapFO/S0JRFP4UIUJIqMWgLQzalAyKIN4TxNXJoZaGIPwHXNMt/A+C1pZabKgQQd9kQ4pS0KBUi4MNNgT+ev54nXPeVTRoqQvfu+ee7zvnnnPvfQ7LsvCf4ZLvSZi/ScIpQScYv+g1QoGQEv15zk4wHo0k2BmJYJzNskB3XuTnkoyPQxKsNLwRnJTEycZwOJRgDAbgmdYF82hfmwSzzb4fGkni4DPoHu5K9sVw2I5wu9HNZKDagXDRKNBuy6Kbywm3ePlgSAUD0zQI+tftLdDrAa0WOIB8BYYEk4851rCWY1Qb1IJpYum6bNCsf97f0xZdoNHAUiwmYJt9zLFGaTFNMOj3ZbF882yQrX9ks0CnA9RqNshmH3OsmY1xqRampz21PR6g2bRtr3dOM6ubq+B9b1Uju7AWjwNvb3YVDLLZxxxrZmPkFurbK9NH4kskgHxeyHqpJLMvGLS3DYVQT6cnt2P4HluY3ILGpy3Bd3dy2i/F4uS0dbbldohjjbod+51wBU+bC5Z1dWZZBzsCXhM05hSviUbxrJU1cdJCZcMlTzng96NSrUqJZM89ZfJLizOaVKA2TEqC8rrjTz/T1quq4D/jW4ABAF7lQOO4C9PnAAAAAElFTkSuQmCC'); background-repeat: no-repeat; background-position: 50% 50%; cursor: pointer; height: 25px; position: absolute; right: 0px; top: 0px; width: 25px; z-index: 1;");
        closeChecklistButton.onclick = onChecklistClose;
        divChecklistsPopup.appendChild(closeChecklistButton);
    }
    

    let dialogueTitle = document.createElement("DIV");
    dialogueTitle.setAttribute("class", "Title");
    dialogueTitle.setAttribute("style", "background: rgb(61, 61, 61); border-top: none; border-right: none; border-bottom: 1px solid black; border-left: none; border-image: initial; color: orange; line-height: 25px; height: 25px; text-indent: 5px;");
    dialogueTitle.appendChild(document.createTextNode(getTranslation("SelectVersion", userLanguage) + " (" + cl_name + ")"));
    


    divChecklistsPopup.appendChild(dialogueTitle);

    let checklistBody = document.createElement("DIV");
    checklistBody.setAttribute("class", "Body");
    checklistBody.setAttribute("style", "margin-top: 0px; position: relative; width: 100%;");

    let checklistContainer = document.createElement("DIV");
    checklistContainer.setAttribute("class", "Content");
    checklistContainer.setAttribute("style", "margin-top: 0px; overflow: hidden scroll; width: 100%; max-height: 695px;");



    let colors: string[] = ["rgb(118, 118, 118)", "rgb(102, 102, 102)"];

    let subtract = 0;
    subtract += (useActiveInactive ? 41 : 0);
    subtract += (useDelete ? 41 : 0);
    subtract += (useLoad ? 41 : 0);


    for (let i = 0; i < checkListSets.rowCount; ++i)
    {
        console.log(i, checkListSets.row(i).k, checkListSets.row(i).v, checkListSets.row(i).s);

        let color = colors[i % 2];

        let checklistRow = document.createElement("DIV");
        checklistRow.setAttribute("name", checkListSets.row(i).k);
        checklistRow.setAttribute("class", "pu_content");
        checklistRow.setAttribute("style", "background-color: " + color + "; clear: both; overflow: hidden; position: relative; width: 100%; white-space: nowrap;");

        let lblContainer = document.createElement("DIV");
        lblContainer.setAttribute("class", "CL_Lang");
        lblContainer.setAttribute("title", getTranslation("OverrideChecklistName", userLanguage));
        lblContainer.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: calc((100% - " + subtract.toString() + "px) / 1);");

        let lblChecklistDesignation = document.createElement("P");
        // lblChecklistDesignation.setAttribute("contenteditable", "true");
        lblChecklistDesignation.setAttribute("style", "box-shadow: none;");

        lblChecklistDesignation.appendChild(document.createTextNode(checkListSets.row(i).v)); // "Budgetprozess Baulicher Unterhalt"
        lblContainer.appendChild(lblChecklistDesignation);
        checklistRow.appendChild(lblContainer);

        if (useActiveInactive)
        {
            let btnActiveInactive = document.createElement("DIV");
            btnActiveInactive.setAttribute("class", "_STATUS");
            btnActiveInactive.setAttribute("title", getTranslation("ChecklistStatus", userLanguage));
            btnActiveInactive.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-left: 1px solid rgb(61, 61, 61); border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAAVCAYAAACpF6WWAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAA7DAAAOwwHHb6hkAAAAGHRFWHRTb2Z0d2FyZQBQYWludC5ORVQgdjMuMzap5+IlAAABH0lEQVQ4T2NgGHFA8QRDFQhTxeNypxkkFU4yHAYauI4qBiocZ/ADGngLiOdgGCgT2PCfVCxbE/hf8STDf6wGgmwAGUgKaH1YAjZQfo3cf5xeJsXQ8rvJYANDr9qAfUexoVOetoINdLyg+v/ut5uUG7ru9WKwgSC8+91GcGhR5NLjH/fDDQS5FgYIGgrSCAqn9FuBKHH25c9nsHdh4YgsiddQ2cw0uEtAmkGxCwMgS2Dh+PLnMxQLCboUOcxALgMZsPDFFLhlIDY6IGgoSAMs/YFcBnIhLm8THaYwhTCDYDENokHhjQ0Q5VKQRljihhmKHnFERxRyjgKFJcy1sESOKwsT7VKQASDXgVwMSk74AEFDUUqppByiSy2qlKHEGAIAeYG2SZ7gzdMAAAAASUVORK5CYII='); cursor: pointer;");
            checklistRow.appendChild(btnActiveInactive);
        }


        if (useDelete)
        {
            let btnDelete = document.createElement("DIV");
            btnDelete.setAttribute("class", "_REMOVE");
            btnDelete.setAttribute("title", getTranslation("DeleteEntry", userLanguage));
            btnDelete.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/gif;base64,R0lGODlhDwAPAOccAAAAAIAAAACAAICAAAAAgIAAgACAgMDAwMDcwKbK8P+EhP8ICP8QEP8YGP8hIf85Of9CQv9SUv9jY/9zc/+EhP+lpf+trf+1tf/Gxv/Ozv/v7//39//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////78KCgpICAgP8AAP///////////////////////yH5BAEKAP8ALAAAAAAPAA8AAAgxAP8JHEiwoMGDCBMqXMjwn4MFAhs4UOjAAYOJC/NBXOggXz6MCC1GBNmwpMmTKAUGBAA7'); cursor: pointer;");
            checklistRow.appendChild(btnDelete);
        }

        if (useLoad)
        {
            let btnLoad = document.createElement("DIV");
            btnLoad.setAttribute("class", "_SELECT");
            btnLoad.setAttribute("title", getTranslation("LoadChecklistForEditing", userLanguage));

            btnLoad.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border: none; border-left: 1px solid rgb(61, 61, 61); border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/gif;base64,R0lGODlhEAAQAMQAAP///yJjjN3d3fr7/El/oCdnjy9sk5+7zaG9zuju81aIp1mKqCppkFOGpkyAovf5+z93m42uw9jj6yxqkWORrr7R3bvP3GiVsd3n7QAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAAQABAAAAVnoCCOZCkCaKqqJzogS1EsyJC2iRPsvJOgpwGBRwwQbCfEjiGhFBGAk2JnQFkgPEVUAChQU4/IrrDtflHh3aTcOFewu0b5sMRcioeysMg7lgEJQ0UEP38AAwcLOwoHNkBcK5GPJpQiIQA7'); cursor: pointer;");
            btnLoad.onclick = onDataSetSelected;
            checklistRow.appendChild(btnLoad);
            checklistContainer.appendChild(checklistRow);
        }
    }



    checklistBody.appendChild(checklistContainer);
    divChecklistsPopup.appendChild(checklistBody);


    let footerRow = document.createElement("DIV");
    footerRow.setAttribute("class", "EmptyRow");
    footerRow.setAttribute("style", "background-color: rgb(61, 61, 61); clear: both; line-height: 25px; padding-left: 5px; padding-right: 5px; width: 100%;");

    if (useNew)
    {
        let spanNewChecklist = document.createElement("SPAN");
        spanNewChecklist.setAttribute("class", "tableAdd");

        spanNewChecklist.appendChild(document.createTextNode(getTranslation("NewChecklist", userLanguage)));
        footerRow.appendChild(spanNewChecklist);

        footerRow.onclick = onLoadNewChecklistDialogue;
    }
    else
    {
        let spanNewChecklist = document.createElement("SPAN");
        spanNewChecklist.appendChild(document.createTextNode("\xa0"));
        footerRow.appendChild(spanNewChecklist);
    }

    divChecklistsPopup.appendChild(footerRow);


    fragment.appendChild(divChecklistsPopup);
    return fragment;
}


async function onExistingChecklistSelected(ev: MouseEvent)
{
    console.log("onExistingChecklistSelected");
    
    // let row = (<Element>ev.currentTarget);
    let row = getSelectedRow(ev);
    let cl_uid = row.getAttribute("data-cl_uid");
    let cl_name = row.getAttribute("data-cl_name");

    let popup = getPopopContainer(<Element>ev.currentTarget);
    popup.parentNode.removeChild(popup);

    console.log("onExistingChecklistSelected", cl_uid, cl_name);
    let versionDialogue = await openVersionSelection(cl_uid, cl_name, null);
    document.getElementById("mainContainer").appendChild(versionDialogue);
}



async function openChecklistDialogue(checklists: tableWrapper<IT_Checklist>, userLanguage: AvailableLanguages): Promise<DocumentFragment>
{
    // while this changes NULL into "", it has the advantage that a catchable error is produced if chlist is NULL
    let useClose: boolean = false;
    let useActiveInactive = false;
    let useDelete = false;
    let useLoad = true;
    let useNew = true;

    let ce = document.createElement;

    let fragment = document.createDocumentFragment();

    let divChecklistsPopup = document.createElement("DIV");
    divChecklistsPopup.setAttribute("id", "Checklists_Popup");
    divChecklistsPopup.setAttribute("class", "Popup noselect");
    divChecklistsPopup.setAttribute("tabindex", "1");
    divChecklistsPopup.setAttribute("style", "border: 1px solid black; background-color: rgb(102, 102, 102); box-sizing: border-box; box-shadow: rgb(0, 0, 0) 5px 5px 6px 0px; color: rgb(255, 255, 255); display: block; font-family: Arial, Helvetica, sans-serif; font-size: 11px; height: auto; left: 50%; margin-left: 0px; margin-right: 0px; max-height: 75%; max-width: 75%; min-width: 25%; overflow: hidden; position: absolute; top: 50%; width: 480px; z-index: 2000000000; transform: translate(-50%, -50%);");

    if (useClose)
    {
        let closeChecklistButton = document.createElement("DIV");
        closeChecklistButton.setAttribute("class", "closeImage");
        closeChecklistButton.setAttribute("style", "background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHMSURBVHjapFO/S0JRFP4UIUJIqMWgLQzalAyKIN4TxNXJoZaGIPwHXNMt/A+C1pZabKgQQd9kQ4pS0KBUi4MNNgT+ev54nXPeVTRoqQvfu+ee7zvnnnPvfQ7LsvCf4ZLvSZi/ScIpQScYv+g1QoGQEv15zk4wHo0k2BmJYJzNskB3XuTnkoyPQxKsNLwRnJTEycZwOJRgDAbgmdYF82hfmwSzzb4fGkni4DPoHu5K9sVw2I5wu9HNZKDagXDRKNBuy6Kbywm3ePlgSAUD0zQI+tftLdDrAa0WOIB8BYYEk4851rCWY1Qb1IJpYum6bNCsf97f0xZdoNHAUiwmYJt9zLFGaTFNMOj3ZbF882yQrX9ks0CnA9RqNshmH3OsmY1xqRampz21PR6g2bRtr3dOM6ubq+B9b1Uju7AWjwNvb3YVDLLZxxxrZmPkFurbK9NH4kskgHxeyHqpJLMvGLS3DYVQT6cnt2P4HluY3ILGpy3Bd3dy2i/F4uS0dbbldohjjbod+51wBU+bC5Z1dWZZBzsCXhM05hSviUbxrJU1cdJCZcMlTzng96NSrUqJZM89ZfJLizOaVKA2TEqC8rrjTz/T1quq4D/jW4ABAF7lQOO4C9PnAAAAAElFTkSuQmCC'); background-repeat: no-repeat; background-position: 50% 50%; cursor: pointer; height: 25px; position: absolute; right: 0px; top: 0px; width: 25px; z-index: 1;");
        closeChecklistButton.onclick = onChecklistClose;
        divChecklistsPopup.appendChild(closeChecklistButton);
    }


    let dialogueTitle = document.createElement("DIV");
    dialogueTitle.setAttribute("class", "Title");
    dialogueTitle.setAttribute("style", "background: rgb(61, 61, 61); border-top: none; border-right: none; border-bottom: 1px solid black; border-left: none; border-image: initial; color: orange; line-height: 25px; height: 25px; text-indent: 5px;");
    dialogueTitle.appendChild(document.createTextNode(getTranslation("OpenChecklist", userLanguage)));



    divChecklistsPopup.appendChild(dialogueTitle);

    let checklistBody = document.createElement("DIV");
    checklistBody.setAttribute("class", "Body");
    checklistBody.setAttribute("style", "margin-top: 0px; position: relative; width: 100%;");

    let checklistContainer = document.createElement("DIV");
    checklistContainer.setAttribute("class", "Content");
    checklistContainer.setAttribute("style", "margin-top: 0px; overflow: hidden scroll; width: 100%; max-height: 695px;");



    let colors: string[] = ["rgb(118, 118, 118)", "rgb(102, 102, 102)"];

    let subtract = 0;
    subtract += (useActiveInactive ? 41 : 0);
    subtract += (useDelete ? 41 : 0);
    subtract += (useLoad ? 41 : 0);


    for (let i = 0; i < checklists.rowCount; ++i)
    {
        // console.log(i, checklists.row(i).CL_UID, checklists.row(i).CL_Name, checklists.row(i).CL_Title);
        let color = colors[i % 2];

        let checklistRow = document.createElement("DIV");
        checklistRow.setAttribute("data-cl_uid", checklists.row(i).CL_UID);
        checklistRow.setAttribute("data-cl_name", checklists.row(i).CL_Name);
        checklistRow.setAttribute("class", "pu_content");
        checklistRow.setAttribute("style", "background-color: " + color + "; clear: both; overflow: hidden; position: relative; width: 100%; white-space: nowrap;");

        let lblContainer = document.createElement("DIV");
        lblContainer.setAttribute("class", "CL_Lang");
        lblContainer.setAttribute("title", getTranslation("OverrideChecklistName", userLanguage));
        lblContainer.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: calc((100% - " + subtract.toString() + "px) / 1);");

        let lblChecklistDesignation = document.createElement("P");
        // lblChecklistDesignation.setAttribute("contenteditable", "true");
        lblChecklistDesignation.setAttribute("style", "box-shadow: none;");

        lblChecklistDesignation.appendChild(document.createTextNode(checklists.row(i).CL_Name)); // "Budgetprozess Baulicher Unterhalt"
        lblContainer.appendChild(lblChecklistDesignation);
        checklistRow.appendChild(lblContainer);

        if (useActiveInactive)
        {
            let btnActiveInactive = document.createElement("DIV");
            btnActiveInactive.setAttribute("class", "_STATUS");
            btnActiveInactive.setAttribute("title", getTranslation("ChecklistStatus", userLanguage));
            btnActiveInactive.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-left: 1px solid rgb(61, 61, 61); border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAAVCAYAAACpF6WWAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAA7DAAAOwwHHb6hkAAAAGHRFWHRTb2Z0d2FyZQBQYWludC5ORVQgdjMuMzap5+IlAAABH0lEQVQ4T2NgGHFA8QRDFQhTxeNypxkkFU4yHAYauI4qBiocZ/ADGngLiOdgGCgT2PCfVCxbE/hf8STDf6wGgmwAGUgKaH1YAjZQfo3cf5xeJsXQ8rvJYANDr9qAfUexoVOetoINdLyg+v/ut5uUG7ru9WKwgSC8+91GcGhR5NLjH/fDDQS5FgYIGgrSCAqn9FuBKHH25c9nsHdh4YgsiddQ2cw0uEtAmkGxCwMgS2Dh+PLnMxQLCboUOcxALgMZsPDFFLhlIDY6IGgoSAMs/YFcBnIhLm8THaYwhTCDYDENokHhjQ0Q5VKQRljihhmKHnFERxRyjgKFJcy1sESOKwsT7VKQASDXgVwMSk74AEFDUUqppByiSy2qlKHEGAIAeYG2SZ7gzdMAAAAASUVORK5CYII='); cursor: pointer;");
            checklistRow.appendChild(btnActiveInactive);
        }


        if (useDelete)
        {
            let btnDelete = document.createElement("DIV");
            btnDelete.setAttribute("class", "_REMOVE");
            btnDelete.setAttribute("title", getTranslation("DeleteEntry", userLanguage));
            btnDelete.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/gif;base64,R0lGODlhDwAPAOccAAAAAIAAAACAAICAAAAAgIAAgACAgMDAwMDcwKbK8P+EhP8ICP8QEP8YGP8hIf85Of9CQv9SUv9jY/9zc/+EhP+lpf+trf+1tf/Gxv/Ozv/v7//39//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////78KCgpICAgP8AAP///////////////////////yH5BAEKAP8ALAAAAAAPAA8AAAgxAP8JHEiwoMGDCBMqXMjwn4MFAhs4UOjAAYOJC/NBXOggXz6MCC1GBNmwpMmTKAUGBAA7'); cursor: pointer;");
            checklistRow.appendChild(btnDelete);
        }

        if (useLoad)
        {
            let btnLoad = document.createElement("DIV");
            btnLoad.setAttribute("class", "_SELECT");
            btnLoad.setAttribute("title", getTranslation("LoadChecklistForEditing", userLanguage));

            btnLoad.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border: none; border-left: 1px solid rgb(61, 61, 61); border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/gif;base64,R0lGODlhEAAQAMQAAP///yJjjN3d3fr7/El/oCdnjy9sk5+7zaG9zuju81aIp1mKqCppkFOGpkyAovf5+z93m42uw9jj6yxqkWORrr7R3bvP3GiVsd3n7QAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAAQABAAAAVnoCCOZCkCaKqqJzogS1EsyJC2iRPsvJOgpwGBRwwQbCfEjiGhFBGAk2JnQFkgPEVUAChQU4/IrrDtflHh3aTcOFewu0b5sMRcioeysMg7lgEJQ0UEP38AAwcLOwoHNkBcK5GPJpQiIQA7'); cursor: pointer;");
            btnLoad.onclick = onExistingChecklistSelected;
            checklistRow.appendChild(btnLoad);
            checklistContainer.appendChild(checklistRow);
        }
    }



    checklistBody.appendChild(checklistContainer);
    divChecklistsPopup.appendChild(checklistBody);


    let footerRow = document.createElement("DIV");
    footerRow.setAttribute("class", "EmptyRow");
    footerRow.setAttribute("style", "background-color: rgb(61, 61, 61); clear: both; line-height: 25px; padding-left: 5px; padding-right: 5px; width: 100%;");

    if (useNew)
    {
        let spanNewChecklist = document.createElement("SPAN");
        spanNewChecklist.setAttribute("class", "tableAdd");

        spanNewChecklist.appendChild(document.createTextNode(getTranslation("NewChecklist", userLanguage)));
        footerRow.appendChild(spanNewChecklist);

        footerRow.onclick = onLoadNewChecklistDialogue;
    }
    else
    {
        let spanNewChecklist = document.createElement("SPAN");
        spanNewChecklist.appendChild(document.createTextNode("\xa0"));
        footerRow.appendChild(spanNewChecklist);
    }

    divChecklistsPopup.appendChild(footerRow);


    fragment.appendChild(divChecklistsPopup);
    return fragment;
}




async function onNewChecklistSelected(ev: MouseEvent)
{
    let row = getSelectedRow(ev);
    let cl_uid = row.getAttribute("name");

    let popup = getPopopContainer(<Element>ev.currentTarget);
    popup.parentNode.removeChild(popup);

    let pd: IPortalSessionData = getPortalData();

    console.log("cl_uid", cl_uid);
    loadChecklist(pd.proc, cl_uid, null, false);
}


async function newChecklistDialogue(checklists: tableWrapper<IT_Checklist>, userLanguage: AvailableLanguages): Promise<DocumentFragment>
{
    // while this changes NULL into "", it has the advantage that a catchable error is produced if chlist is NULL
    let useClose: boolean = false;
    let useActiveInactive = false;
    let useDelete = false;
    let useLoad = true;
    let useNew = false;



    let ce = document.createElement;

    let fragment = document.createDocumentFragment();

    let divChecklistsPopup = document.createElement("DIV");
    divChecklistsPopup.setAttribute("id", "Checklists_Popup");
    divChecklistsPopup.setAttribute("class", "Popup noselect");
    divChecklistsPopup.setAttribute("tabindex", "1");
    divChecklistsPopup.setAttribute("style", "border: 1px solid black; background-color: rgb(102, 102, 102); box-sizing: border-box; box-shadow: rgb(0, 0, 0) 5px 5px 6px 0px; color: rgb(255, 255, 255); display: block; font-family: Arial, Helvetica, sans-serif; font-size: 11px; height: auto; left: 50%; margin-left: 0px; margin-right: 0px; max-height: 75%; max-width: 75%; min-width: 25%; overflow: hidden; position: absolute; top: 50%; width: 480px; z-index: 2000000000; transform: translate(-50%, -50%);");

    if (useClose)
    { 
        let closeChecklistButton = document.createElement("DIV");
        closeChecklistButton.setAttribute("class", "closeImage");
        closeChecklistButton.setAttribute("style", "background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHMSURBVHjapFO/S0JRFP4UIUJIqMWgLQzalAyKIN4TxNXJoZaGIPwHXNMt/A+C1pZabKgQQd9kQ4pS0KBUi4MNNgT+ev54nXPeVTRoqQvfu+ee7zvnnnPvfQ7LsvCf4ZLvSZi/ScIpQScYv+g1QoGQEv15zk4wHo0k2BmJYJzNskB3XuTnkoyPQxKsNLwRnJTEycZwOJRgDAbgmdYF82hfmwSzzb4fGkni4DPoHu5K9sVw2I5wu9HNZKDagXDRKNBuy6Kbywm3ePlgSAUD0zQI+tftLdDrAa0WOIB8BYYEk4851rCWY1Qb1IJpYum6bNCsf97f0xZdoNHAUiwmYJt9zLFGaTFNMOj3ZbF882yQrX9ks0CnA9RqNshmH3OsmY1xqRampz21PR6g2bRtr3dOM6ubq+B9b1Uju7AWjwNvb3YVDLLZxxxrZmPkFurbK9NH4kskgHxeyHqpJLMvGLS3DYVQT6cnt2P4HluY3ILGpy3Bd3dy2i/F4uS0dbbldohjjbod+51wBU+bC5Z1dWZZBzsCXhM05hSviUbxrJU1cdJCZcMlTzng96NSrUqJZM89ZfJLizOaVKA2TEqC8rrjTz/T1quq4D/jW4ABAF7lQOO4C9PnAAAAAElFTkSuQmCC'); background-repeat: no-repeat; background-position: 50% 50%; cursor: pointer; height: 25px; position: absolute; right: 0px; top: 0px; width: 25px; z-index: 1;");
        closeChecklistButton.onclick = onChecklistClose;
        divChecklistsPopup.appendChild(closeChecklistButton);
    }


    let dialogueTitle = document.createElement("DIV");
    dialogueTitle.setAttribute("class", "Title");
    dialogueTitle.setAttribute("style", "background: rgb(61, 61, 61); border-top: none; border-right: none; border-bottom: 1px solid black; border-left: none; border-image: initial; color: orange; line-height: 25px; height: 25px; text-indent: 5px;");
    dialogueTitle.appendChild(document.createTextNode(getTranslation("NewChecklist", userLanguage)));



    divChecklistsPopup.appendChild(dialogueTitle);

    let checklistBody = document.createElement("DIV");
    checklistBody.setAttribute("class", "Body");
    checklistBody.setAttribute("style", "margin-top: 0px; position: relative; width: 100%;");

    let checklistContainer = document.createElement("DIV");
    checklistContainer.setAttribute("class", "Content");
    checklistContainer.setAttribute("style", "margin-top: 0px; overflow: hidden scroll; width: 100%; max-height: 695px;");



    let colors: string[] = ["rgb(118, 118, 118)", "rgb(102, 102, 102)"];

    let subtract = 0;
    subtract += (useActiveInactive ? 41 : 0);
    subtract += (useDelete ? 41 : 0);
    subtract += (useLoad ? 41 : 0);


    for (let i = 0; i < checklists.rowCount; ++i)
    {
        console.log(i, checklists.row(i).CL_UID, checklists.row(i).CL_Name, checklists.row(i).CL_Title);

        let color = colors[i % 2];

        let checklistRow = document.createElement("DIV");
        checklistRow.setAttribute("name", checklists.row(i).CL_UID);
        checklistRow.setAttribute("class", "pu_content");
        checklistRow.setAttribute("style", "background-color: " + color + "; clear: both; overflow: hidden; position: relative; width: 100%; white-space: nowrap;");

        let lblContainer = document.createElement("DIV");
        lblContainer.setAttribute("class", "CL_Lang");
        lblContainer.setAttribute("title", getTranslation("OverrideChecklistName", userLanguage));
        lblContainer.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: calc((100% - " + subtract.toString() + "px) / 1);");

        let lblChecklistDesignation = document.createElement("P");
        // lblChecklistDesignation.setAttribute("contenteditable", "true");
        lblChecklistDesignation.setAttribute("style", "box-shadow: none;");

        lblChecklistDesignation.appendChild(document.createTextNode(checklists.row(i).CL_Name)); // "Budgetprozess Baulicher Unterhalt"
        lblContainer.appendChild(lblChecklistDesignation);
        checklistRow.appendChild(lblContainer);

        if (useActiveInactive)
        {
            let btnActiveInactive = document.createElement("DIV");
            btnActiveInactive.setAttribute("class", "_STATUS");
            btnActiveInactive.setAttribute("title", getTranslation("ChecklistStatus", userLanguage));
            btnActiveInactive.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-left: 1px solid rgb(61, 61, 61); border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAAVCAYAAACpF6WWAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAA7DAAAOwwHHb6hkAAAAGHRFWHRTb2Z0d2FyZQBQYWludC5ORVQgdjMuMzap5+IlAAABH0lEQVQ4T2NgGHFA8QRDFQhTxeNypxkkFU4yHAYauI4qBiocZ/ADGngLiOdgGCgT2PCfVCxbE/hf8STDf6wGgmwAGUgKaH1YAjZQfo3cf5xeJsXQ8rvJYANDr9qAfUexoVOetoINdLyg+v/ut5uUG7ru9WKwgSC8+91GcGhR5NLjH/fDDQS5FgYIGgrSCAqn9FuBKHH25c9nsHdh4YgsiddQ2cw0uEtAmkGxCwMgS2Dh+PLnMxQLCboUOcxALgMZsPDFFLhlIDY6IGgoSAMs/YFcBnIhLm8THaYwhTCDYDENokHhjQ0Q5VKQRljihhmKHnFERxRyjgKFJcy1sESOKwsT7VKQASDXgVwMSk74AEFDUUqppByiSy2qlKHEGAIAeYG2SZ7gzdMAAAAASUVORK5CYII='); cursor: pointer;");
            checklistRow.appendChild(btnActiveInactive);
        }


        if (useDelete)
        {
            let btnDelete = document.createElement("DIV");
            btnDelete.setAttribute("class", "_REMOVE");
            btnDelete.setAttribute("title", getTranslation("DeleteEntry", userLanguage));
            btnDelete.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/gif;base64,R0lGODlhDwAPAOccAAAAAIAAAACAAICAAAAAgIAAgACAgMDAwMDcwKbK8P+EhP8ICP8QEP8YGP8hIf85Of9CQv9SUv9jY/9zc/+EhP+lpf+trf+1tf/Gxv/Ozv/v7//39//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////78KCgpICAgP8AAP///////////////////////yH5BAEKAP8ALAAAAAAPAA8AAAgxAP8JHEiwoMGDCBMqXMjwn4MFAhs4UOjAAYOJC/NBXOggXz6MCC1GBNmwpMmTKAUGBAA7'); cursor: pointer;");
            checklistRow.appendChild(btnDelete);
        }

        if (useLoad)
        {
            let btnLoad = document.createElement("DIV");
            btnLoad.setAttribute("class", "_SELECT");
            btnLoad.setAttribute("title", getTranslation("LoadChecklistForEditing", userLanguage));

            btnLoad.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border: none; border-left: 1px solid rgb(61, 61, 61); border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/gif;base64,R0lGODlhEAAQAMQAAP///yJjjN3d3fr7/El/oCdnjy9sk5+7zaG9zuju81aIp1mKqCppkFOGpkyAovf5+z93m42uw9jj6yxqkWORrr7R3bvP3GiVsd3n7QAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAAQABAAAAVnoCCOZCkCaKqqJzogS1EsyJC2iRPsvJOgpwGBRwwQbCfEjiGhFBGAk2JnQFkgPEVUAChQU4/IrrDtflHh3aTcOFewu0b5sMRcioeysMg7lgEJQ0UEP38AAwcLOwoHNkBcK5GPJpQiIQA7'); cursor: pointer;");
            btnLoad.onclick = onNewChecklistSelected;
            checklistRow.appendChild(btnLoad);
            checklistContainer.appendChild(checklistRow);
        }
    }



    checklistBody.appendChild(checklistContainer);
    divChecklistsPopup.appendChild(checklistBody);


    let footerRow = document.createElement("DIV");
    footerRow.setAttribute("class", "EmptyRow");
    footerRow.setAttribute("style", "background-color: rgb(61, 61, 61); clear: both; line-height: 25px; padding-left: 5px; padding-right: 5px; width: 100%;");

    if (useNew)
    {
        let spanNewChecklist = document.createElement("SPAN");
        spanNewChecklist.setAttribute("class", "tableAdd");

        spanNewChecklist.appendChild(document.createTextNode(getTranslation("NewChecklist", userLanguage)));
        footerRow.appendChild(spanNewChecklist);

        footerRow.onclick = onLoadNewChecklistDialogue;
    }
    else
    {
        let spanNewChecklist = document.createElement("SPAN");
        spanNewChecklist.appendChild(document.createTextNode("\xa0"));
        footerRow.appendChild(spanNewChecklist);
    }

    divChecklistsPopup.appendChild(footerRow);


    fragment.appendChild(divChecklistsPopup);
    return fragment;
}



function addStylesheet(url: string, id?:string)
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
    if(id)
        ss.setAttribute("id", id);

    ss.setAttribute("rel", "stylesheet");
    ss.setAttribute("href", url);

    h.appendChild(ss);
}




function getObj(sess: IBasicSession): IBasicObject
{
    let obj = sess.mainDS.main[0];
    let SO_UID = (<IT_AP_Standort>obj).SO_UID;
    let GB_UID = (<IT_AP_Gebaeude>obj).GB_UID;
    let GS_UID = (<IT_AP_Geschoss>obj).GS_UID;
    let TK_UID = (<IT_AP_Trakt>obj).TK_UID;
    let RM_UID = (<IT_AP_Raum>obj).RM_UID;
    let TSK_UID = (<IT_TM_Tasks>obj).TSK_UID;

    let OBJ_UID = TSK_UID || SO_UID || GB_UID || GS_UID || TK_UID || RM_UID;
    let OBJT_Code = "";
    if (TSK_UID) OBJT_Code = "TSK";
    else if (SO_UID) OBJT_Code = "SO";
    else if (GB_UID) OBJT_Code = "GB";
    else if (GS_UID) OBJT_Code = "GS";
    else if (TK_UID) OBJT_Code = "TK";
    else if (RM_UID) OBJT_Code = "RM";

    if (OBJT_Code)
        OBJT_Code = OBJT_Code.toUpperCase();

    return { "OBJ_UID": OBJ_UID, "OBJT_Code": OBJT_Code };
}


function saveChecklist(cl_uid?: string)
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


async function onSave(ev:MouseEvent)
{
    ev.preventDefault();
    ev.stopPropagation();

    if(onSaveChecklist != null)
        onSaveChecklist();

    return false;
}


async function onCancel(ev: MouseEvent)
{
    ev.preventDefault();
    ev.stopPropagation();

    onSaveChecklist = null;

    await loadMainContainer();

    console.log("onCancel");
    return false;
}



async function createFooter(pd: IPortalSessionData)
{
    let doc = window.parent.document;
    let main = doc.getElementById("Main");
    // main.insertAdjacentHTML("afterbegin", ccc);

    let fragment = doc.createDocumentFragment();

    let buttonFrame = doc.createElement("DIV");
    buttonFrame.setAttribute("class", "buttonFrame");
    buttonFrame.setAttribute("id", "buttonFrame");

    let spanUsername = doc.createElement("SPAN");
    spanUsername.setAttribute("class", "bfUsername");
    spanUsername.appendChild(doc.createTextNode(pd.userName));
    buttonFrame.appendChild(spanUsername);

    let divRight = doc.createElement("DIV");
    divRight.setAttribute("class", "Right");

    let btnSave = doc.createElement("INPUT");
    btnSave.setAttribute("type", "submit");
    btnSave.setAttribute("name", "btn_Speichern");
    btnSave.setAttribute("value", "Speichern");
    // btnSave.setAttribute("onclick", "alert('hello'); return false;");
    btnSave.onclick = onSave;

    btnSave.setAttribute("style", "box-shadow: rgb(206, 206, 206) 10px 4px 9px -10px inset;");
    divRight.appendChild(btnSave);
    buttonFrame.appendChild(divRight);

    let divLeft = doc.createElement("DIV");
    divLeft.setAttribute("class", "Left");

    let btnCancel = doc.createElement("INPUT");
    btnCancel.setAttribute("type", "submit");
    btnCancel.setAttribute("name", "btn_Abbrechen");
    btnCancel.setAttribute("value", "Abbrechen");
    btnCancel.setAttribute("id", "btn_Abbrechen");
    btnCancel.setAttribute("class", "validate-skip");
    btnCancel.setAttribute("style", "box-shadow: rgb(206, 206, 206) 10px 4px 9px -10px inset;");
    btnCancel.onclick = onCancel;


    divLeft.appendChild(btnCancel);
    buttonFrame.appendChild(divLeft);

    fragment.appendChild(buttonFrame);

    if (main != null)
        main.appendChild(fragment);
}


async function openVersionSelection(cl_uid: string, cl_name: string, tsk_uid:string)
{
    // while this changes NULL into "", it has the advantage that a catchable error is produced if chlist is NULL 
    let params: any = {
        "__cl_uid": null,
        "__obj_uid": null,
        "__objt_code": null,
        "__tsk_uid": null,
    };
    params.__cl_uid = cl_uid;
    params.__tsk_uid = tsk_uid;

    console.log("openVersionSelection params", params);
    let checkListsData = <IAjaxResult<any>>await ajax.fetchJSON("../ajax/AnySelect.ashx?sql=Checklist2.SelectSavedDataset.sql&format=1", params);

    if (checkListsData.hasError)
    {
        alert("Error loading checklist-data:\r\n" + checkListsData.error.message);
        return;
    }

    let checkListSets = new tableWrapper<IDropDown>(checkListsData.data.tables[0].columns, checkListsData.data.tables[0].rows, false);
    // console.log(checklists);
    let df = await loadDataSetSelectionDialogue(checkListSets, cl_name);

    return df;
}



async function loadMainContainer()
{
    let pd: IPortalSessionData = getPortalData();
    let sess = <IBasicSession>await ajax.fetchJSON("../ajax/CurrentSession.ashx")
    let obj: IBasicObject = getObj(sess);
    let mainContainer = document.getElementById("mainContainer");
    clearHtmlElementContents(mainContainer);
    // console.log(obj);

    // while this changes NULL into "", it has the advantage that a catchable error is produced if chlist is NULL 
    let params: any = {
        "__obj_uid": null,
        "__objt_code": null,
        "__tsk_uid": null
    };


    let urlAvailable = "../ajax/AnySelect.ashx?sql=Checklist2.GetAvailableChecklists.sql&format=1";
    // console.log(params);
    let allChecklistsData = <IAjaxResult<any>>await ajax.fetchJSON(urlAvailable, params);

    if (obj.OBJT_Code === "TSK")
    {
        params.__tsk_uid = obj.OBJ_UID;
        params.__obj_uid = null;
        params.__objt_code = null;
    }
    else
    {
        params.__tsk_uid = null;
        params.__obj_uid = obj.OBJ_UID;
        params.__objt_code = obj.OBJT_Code;
    }

    // console.log("obj", obj);
    let availableChecklistsData = <IAjaxResult<any>>await ajax.fetchJSON(urlAvailable, params);

    if (allChecklistsData.hasError)
    {
        alert("Error loading checklist-data1:\r\n" + allChecklistsData.error.message);
        return;
    }

    if (availableChecklistsData.hasError)
    {
        alert("Error loading checklist-data2:\r\n" + availableChecklistsData.error.message);
        return;
    }

    let allChecklists = new tableWrapper<IT_Checklist>(allChecklistsData.data.tables[0].columns, allChecklistsData.data.tables[0].rows, false);
    let availableChecklists = new tableWrapper<IT_Checklist>(availableChecklistsData.data.tables[0].columns, availableChecklistsData.data.tables[0].rows, false);

    // IT_Checklist, IDropDown
    // checkListSets.row(0).CL_SavedCount
    // console.log("allChecklists", allChecklists.rowCount, allChecklists);
    // console.log("availableChecklists", availableChecklists.rowCount, availableChecklists);


    // let openDialogue = await openChecklistDialogue(availableChecklists, userLanguage);
    // document.getElementById("mainContainer").appendChild(openDialogue);


    // if(false)
    if (availableChecklists.rowCount > 0)
    {

        if (availableChecklists.rowCount == 1)
        {
            let cl_uid = availableChecklists.row(0).CL_UID
            let cl_name = availableChecklists.row(0).CL_Name
            let versionDialogue = await openVersionSelection(cl_uid, cl_name, null);
            mainContainer.appendChild(versionDialogue);
        }
        else
        {
            let openDialogue = await openChecklistDialogue(availableChecklists, pd.userLanguage);
            mainContainer.appendChild(openDialogue);
        }
    }
    else
    {
        let newDialogue = await newChecklistDialogue(allChecklists, pd.userLanguage);
        mainContainer.appendChild(newDialogue);
    }

}


async function onDocumentReady()
{
    await assertSession();
    let pd: IPortalSessionData = getPortalData();

    await createFooter(pd);
    await loadMainContainer();
}



// if (window.addEventListener) window.addEventListener("load", autorun, false);
// else if (window.attachEvent) window.attachEvent("onload", autorun);
// else window.onload = autorun;


function saveOnFrameSwitching(iframe: HTMLIFrameElement)
{
    // $iframe.load(function (){});

    iframe.contentWindow.onbeforeunload = function ()
    {
        debugger;
    };
}






export async function main()
{
    // do polyfills immediately on script-load
    if (true)
    {
        // <link href="css/Layout.css" rel = "stylesheet" type = "text/css" >
        addStylesheet("./css/Layout.css?v=1", "dialogueCSS");
        addStylesheet("../css/Scrolling/Scrollbar.css?v=1", "scrollbarCSS");
        addStylesheet("css/checklist.css?v=1", "checklistCSS");
    }

    if (document.addEventListener) document.addEventListener("DOMContentLoaded", onDocumentReady, false);
    else if (document.attachEvent) document.attachEvent("onreadystatechange", onDocumentReady);
    else window.onload = onDocumentReady;
}
