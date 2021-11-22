
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




async function openChecklistDialogue():Promise<DocumentFragment>
{
    // while this changes NULL into "", it has the advantage that a catchable error is produced if chlist is NULL 
    let checkListsData = <IAjaxResult<any>>await ajax.fetchJSON("../ajax/AnySelect.ashx?sql=Checklist2.GetAvailableChecklists.sql&format=1");

    if (checkListsData.hasError)
    {
        alert("Error loading checklist-data:\r\n" + checkListsData.error.message);
        return;
    }


    let checklists = new tableWrapper<IT_Checklist>(checkListsData.data.tables[0].columns, checkListsData.data.tables[0].rows, false);
    // console.log(checklists);



    let ce = document.createElement;

    let fragment = document.createDocumentFragment();

    let divChecklistsPopup = document.createElement("DIV");
    divChecklistsPopup.setAttribute("id", "Checklists_Popup");
    divChecklistsPopup.setAttribute("class", "Popup");
    divChecklistsPopup.setAttribute("tabindex", "1");
    divChecklistsPopup.setAttribute("style", "border: 1px solid black; background-color: rgb(102, 102, 102); box-sizing: border-box; box-shadow: rgb(0, 0, 0) 5px 5px 6px 0px; color: rgb(255, 255, 255); display: block; font-family: Arial, Helvetica, sans-serif; font-size: 11px; height: auto; left: 50%; margin-left: 0px; margin-right: 0px; max-height: 75%; max-width: 75%; min-width: 25%; overflow: hidden; position: absolute; top: 50%; width: 480px; z-index: 2000000000; transform: translate(-50%, -50%);");

    let closeChecklistButton = document.createElement("DIV");
    closeChecklistButton.setAttribute("class", "closeImage");
    closeChecklistButton.setAttribute("style", "background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHMSURBVHjapFO/S0JRFP4UIUJIqMWgLQzalAyKIN4TxNXJoZaGIPwHXNMt/A+C1pZabKgQQd9kQ4pS0KBUi4MNNgT+ev54nXPeVTRoqQvfu+ee7zvnnnPvfQ7LsvCf4ZLvSZi/ScIpQScYv+g1QoGQEv15zk4wHo0k2BmJYJzNskB3XuTnkoyPQxKsNLwRnJTEycZwOJRgDAbgmdYF82hfmwSzzb4fGkni4DPoHu5K9sVw2I5wu9HNZKDagXDRKNBuy6Kbywm3ePlgSAUD0zQI+tftLdDrAa0WOIB8BYYEk4851rCWY1Qb1IJpYum6bNCsf97f0xZdoNHAUiwmYJt9zLFGaTFNMOj3ZbF882yQrX9ks0CnA9RqNshmH3OsmY1xqRampz21PR6g2bRtr3dOM6ubq+B9b1Uju7AWjwNvb3YVDLLZxxxrZmPkFurbK9NH4kskgHxeyHqpJLMvGLS3DYVQT6cnt2P4HluY3ILGpy3Bd3dy2i/F4uS0dbbldohjjbod+51wBU+bC5Z1dWZZBzsCXhM05hSviUbxrJU1cdJCZcMlTzng96NSrUqJZM89ZfJLizOaVKA2TEqC8rrjTz/T1quq4D/jW4ABAF7lQOO4C9PnAAAAAElFTkSuQmCC'); background-repeat: no-repeat; background-position: 50% 50%; cursor: pointer; height: 25px; position: absolute; right: 0px; top: 0px; width: 25px; z-index: 1;");


    closeChecklistButton.onclick = onChecklistClose;

    divChecklistsPopup.appendChild(closeChecklistButton);




    let dialogueTitle = document.createElement("DIV");
    dialogueTitle.setAttribute("class", "Title");
    dialogueTitle.setAttribute("style", "background: rgb(61, 61, 61); border-top: none; border-right: none; border-bottom: 1px solid black; border-left: none; border-image: initial; color: orange; line-height: 25px; height: 25px; text-indent: 5px;");
    dialogueTitle.appendChild(document.createTextNode("Checkliste öffnen"));
    divChecklistsPopup.appendChild(dialogueTitle);

    let checklistBody = document.createElement("DIV");
    checklistBody.setAttribute("class", "Body");
    checklistBody.setAttribute("style", "margin-top: 0px; position: relative; width: 100%;");

    let checklistContainer = document.createElement("DIV");
    checklistContainer.setAttribute("class", "Content");
    checklistContainer.setAttribute("style", "margin-top: 0px; overflow: hidden scroll; width: 100%; max-height: 695px;");



    let colors:string[] = ["rgb(118, 118, 118)", "rgb(102, 102, 102)"];

    
    let useActiveInactive = false;
    let useDelete = false;
    let useLoad = true;

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

        let node_8 = document.createElement("DIV");
        node_8.setAttribute("class", "CL_Lang");
        node_8.setAttribute("title", "Name\n    Durch das Überschreiben des Names in der Liste wird der Name der Checkliste geändert");
        node_8.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: calc((100% - " + subtract.toString() + "px) / 1);");

        let lblChecklistDesignation = document.createElement("P");
        lblChecklistDesignation.setAttribute("contenteditable", "true");
        lblChecklistDesignation.appendChild(document.createTextNode(checklists.row(i).CL_Name)); // "Budgetprozess Baulicher Unterhalt"
        node_8.appendChild(lblChecklistDesignation);
        checklistRow.appendChild(node_8);

        if (useActiveInactive)
        {
            let btnActiveInactive = document.createElement("DIV");
            btnActiveInactive.setAttribute("class", "_STATUS");
            btnActiveInactive.setAttribute("title", "Status (aktiv | inaktiv)\n    Inaktive Checklisten sind nicht zuweisbar");
            btnActiveInactive.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-left: 1px solid rgb(61, 61, 61); border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAAVCAYAAACpF6WWAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAACXBIWXMAAA7DAAAOwwHHb6hkAAAAGHRFWHRTb2Z0d2FyZQBQYWludC5ORVQgdjMuMzap5+IlAAABH0lEQVQ4T2NgGHFA8QRDFQhTxeNypxkkFU4yHAYauI4qBiocZ/ADGngLiOdgGCgT2PCfVCxbE/hf8STDf6wGgmwAGUgKaH1YAjZQfo3cf5xeJsXQ8rvJYANDr9qAfUexoVOetoINdLyg+v/ut5uUG7ru9WKwgSC8+91GcGhR5NLjH/fDDQS5FgYIGgrSCAqn9FuBKHH25c9nsHdh4YgsiddQ2cw0uEtAmkGxCwMgS2Dh+PLnMxQLCboUOcxALgMZsPDFFLhlIDY6IGgoSAMs/YFcBnIhLm8THaYwhTCDYDENokHhjQ0Q5VKQRljihhmKHnFERxRyjgKFJcy1sESOKwsT7VKQASDXgVwMSk74AEFDUUqppByiSy2qlKHEGAIAeYG2SZ7gzdMAAAAASUVORK5CYII='); cursor: pointer;");
            checklistRow.appendChild(btnActiveInactive);
        }


        if (useDelete)
        {
            let btnDelete = document.createElement("DIV");
            btnDelete.setAttribute("class", "_REMOVE");
            btnDelete.setAttribute("title", "Löschen\n    Gelöschte Checklisten erscheinen nach dem Schliessen des Fensters nicht mehr");
            btnDelete.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/gif;base64,R0lGODlhDwAPAOccAAAAAIAAAACAAICAAAAAgIAAgACAgMDAwMDcwKbK8P+EhP8ICP8QEP8YGP8hIf85Of9CQv9SUv9jY/9zc/+EhP+lpf+trf+1tf/Gxv/Ozv/v7//39//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////78KCgpICAgP8AAP///////////////////////yH5BAEKAP8ALAAAAAAPAA8AAAgxAP8JHEiwoMGDCBMqXMjwn4MFAhs4UOjAAYOJC/NBXOggXz6MCC1GBNmwpMmTKAUGBAA7'); cursor: pointer;");
            checklistRow.appendChild(btnDelete);
        }

        if (useLoad)
        { 
            let btnLoad = document.createElement("DIV");
            btnLoad.setAttribute("class", "_SELECT");
            btnLoad.setAttribute("title", "Laden\n    Gewählte Checkliste zum Bearbeiten Laden");

            btnLoad.setAttribute("style", "background-position: 50% 50%; background-repeat: no-repeat; border: none; border-left: 1px solid rgb(61, 61, 61); border-right: 1px solid rgb(61, 61, 61); box-sizing: border-box; float: left; height: 25px; line-height: 25px; overflow: hidden; text-indent: 5px; width: 40px; background-image: url('data:image/gif;base64,R0lGODlhEAAQAMQAAP///yJjjN3d3fr7/El/oCdnjy9sk5+7zaG9zuju81aIp1mKqCppkFOGpkyAovf5+z93m42uw9jj6yxqkWORrr7R3bvP3GiVsd3n7QAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAAQABAAAAVnoCCOZCkCaKqqJzogS1EsyJC2iRPsvJOgpwGBRwwQbCfEjiGhFBGAk2JnQFkgPEVUAChQU4/IrrDtflHh3aTcOFewu0b5sMRcioeysMg7lgEJQ0UEP38AAwcLOwoHNkBcK5GPJpQiIQA7'); cursor: pointer;");
            checklistRow.appendChild(btnLoad);
            checklistContainer.appendChild(checklistRow);
        }
    }



    checklistBody.appendChild(checklistContainer);
    divChecklistsPopup.appendChild(checklistBody);


    let footerRow = document.createElement("DIV");
    footerRow.setAttribute("class", "EmptyRow");
    footerRow.setAttribute("style", "background-color: rgb(61, 61, 61); clear: both; line-height: 25px; padding-left: 5px; padding-right: 5px; width: 100%;");

    if (false)
    {
        let spanNewChecklist = document.createElement("SPAN");
        spanNewChecklist.setAttribute("class", "tableAdd");
        spanNewChecklist.appendChild(document.createTextNode("Neue Checkliste"));
        footerRow.appendChild(spanNewChecklist);
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



function addStylesheet(url: string)
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


export async function main()
{
    // do polyfills immediately on script-load
    if (true)
    {
        // addStylesheet("../css/Scrolling/Scrollbar.css?v=1");

        // <link href="css/Layout.css" rel = "stylesheet" type = "text/css" >
        addStylesheet("./css/Layout.css?v=1");
    }

    let dialog = await openChecklistDialogue();
    document.getElementById("mainContainer").appendChild(dialog);
}
