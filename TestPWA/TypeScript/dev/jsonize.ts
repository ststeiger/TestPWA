
import * as autobind_autotrace from "./autobind_autotrace.js";
import * as uuid from "./uuid.js";
import * as string_utils from "./string_utils.js";

// https://stackoverflow.com/questions/39282253/how-can-i-alias-a-default-import-in-javascript
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/import
import { TableWrapper as tableWrapper, GroupedTableWrapper as groupedTableWrapper, GroupedData } from "./table_wrapper.js";


function _getProperties(el: Element)
{
    let arr = []

    for (let i = 0, atts = el.attributes, n = atts.length; i < n; i++)
    {
        let a = atts[i].nodeName;
        arr.push([a, el.getAttribute(a)]);
    }

    return arr;
}


export function collectStructure(p: Node, parent?: string, sort?: number)
{
    if (p == null)
        return null;

    parent = parent || null;
    sort = sort || 0;

    let children: Node[] = Array.prototype.slice.call(p.childNodes);
    let guid = uuid.newGuid();

    let checklistData: IXmlStructure = {
         "uuid": guid
        ,"parent_uuid": parent
        ,"tagName": p.nodeName
        ,"properties": _getProperties(<Element>p)
        ,"children": []
        ,"sort": sort
    };


    // id's value must not contain whitespace (spaces, tabs etc.). 
    // Browsers treat non-conforming IDs that contain whitespace as if the whitespace is part of the ID. 
    // In contrast to the class attribute, which allows space-separated values, 
    // elements can only have one single ID value.

    // Note: 
    // Using characters except ASCII letters, digits, '_', '-' and '.' may cause compatibility problems,
    // as they weren't allowed in HTML 4. 
    // Though this restriction has been lifted in HTML5, 
    // an ID should start with a letter for compatibility.

    
    if (p.nodeName.toLowerCase() === "td")
    // if (p.nodeType === Node.ELEMENT_NODE && (<Element>p).children.length === 0)
    // if (p.nodeType === Node.ELEMENT_NODE && p.nodeName === "SPAN" && (<Element>p).innerHTML.indexOf("<b>") != -1)
    {
        let inputSort = 0;

        for (let i = 0; i < children.length; ++i)
        {
            let tagName = children[i].nodeName.toLowerCase();

            // if (children[i].nodeType === Node.TEXT_NODE && !string_utils.isNullOrWhiteSpace(children[i].nodeValue))
            if (children[i].nodeType === Node.ELEMENT_NODE &&
                (tagName === "input" || tagName === "textarea")
            )
            {
                // (<HTMLInputElement>p).name
                let ret = collectStructure(children[i], guid, inputSort++);
                checklistData.children.push(ret);
            }
        }

        if (inputSort == 0)
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
} // End Sub collectStructure



function _createElement(data: IXmlStructure)
{
    let el = document.createElement(data.tagName);

    if (data.uuid != null)
    {
        el.setAttribute("id", data.uuid.toLowerCase());
        el.id = data.uuid.toLowerCase();
    }

    for (let i = 0; i < data.properties.length; ++i)
    {
        el.setAttribute(data.properties[i][0], data.properties[i][1]);
    }

    if (data.innerHtml)
        el.innerHTML = data.innerHtml;

    return el;
}



export function assembleStructure(container: IXmlStructure, parent?: Node)
{
    parent = parent || document.createDocumentFragment();
    let a = _createElement(container);

    for (let i = 0; i < container.children.length; ++i)
    {
        assembleStructure(container.children[i], a);
    }

    parent.appendChild(a);

    return parent;
}




export function constructRecursiveDataStructure(
    elements: tableWrapper<IT_ChecklistElements>
    , properties: groupedTableWrapper<IT_Checklist_ZO_ElementProperties>
    , parentUID?: string, obj?: IXmlStructure
    , lvl?: number
): IXmlStructure 
{
    parentUID = parentUID || "null";
    obj = obj || <IXmlStructure><any>{ "rootNode": true };
    obj.children = obj.children || [];
    lvl = lvl || 0;

    let groupedElements = elements.groupBy("ELE_Parent_UID");
    let childElements: GroupedData<IT_ChecklistElements> = groupedElements.getGroup(parentUID);


    for (let i = 0; i < childElements.rowCount; ++i)
    {
        let thisRow = childElements.row(i);
        // console.log("thisRow", thisRow);

        let props: string[][] = [];

        let propArray = properties.getGroup(thisRow.ELE_UID);

        for (let i = 0; i < propArray.rowCount; ++i)
        {
            let currentItem = propArray.row(i);
            props.push([currentItem.PRO_Name, currentItem.PRO_Value]);
        }

        let childData = <IXmlStructure>{
            "uuid": thisRow.ELE_UID
            , "parent_uuid": thisRow.ELE_Parent_UID
            , "tagName": thisRow.ELE_TagName
            , "sort": thisRow.ELE_Sort
            , "lvl": lvl
            , "properties": props
            , "innerHtml": thisRow.ELE_InnerHtml
        };

        let child = constructRecursiveDataStructure(elements, properties, thisRow.ELE_UID, childData, lvl + 1);
        obj.children.push(child);
    }

    if (lvl === 0 && obj.children.length === 1)
        return obj.children[0];

    return obj;
}





(function ()
{

    let _ = {
        "ab": autobind_autotrace
    };

    let doc = collectStructure(document.querySelector("table"));
    console.log(doc);




    let div = document.createElement("div")
    div.setAttribute("id", "abc");

    var t = document.createTextNode("Hello World");
    (<any>t).id = "foobar2021";
    div.appendChild(t);


    document.body.appendChild(div);

    console.log("hello", (<any>document.getElementById("abc").childNodes[0]).id);
    

    // run main here !
    console.log("finished !");
}());
