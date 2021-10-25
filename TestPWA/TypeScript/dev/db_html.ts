
import * as autobind_autotrace from "./autobind_autotrace.js";
import * as uuid from "./uuid.js";
import * as utils from "./string_utils.js";


// https://stackoverflow.com/questions/39282253/how-can-i-alias-a-default-import-in-javascript
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/import
import { TableWrapper as tableWrapper, GroupedTableWrapper as groupedTableWrapper, GroupedData } from "./table_wrapper.js";

let _ = {
    "ab": autobind_autotrace
};

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
        , "parent_uuid": parent
        , "tagName": p.nodeName
        , "properties": _getProperties(<Element>p)
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
} // End Sub collectStructure



function _createElement(data: IXmlStructure)
{
    let el = document.createElement(data.tagName);

    if (data.uuid != null)
    {
        el.setAttribute("id", data.uuid.toLowerCase());
        el.id = data.uuid.toLowerCase();

        let tagName = data.tagName.toLowerCase();
        if (tagName === "input" || tagName === "textarea")
        {
            el.setAttribute("name", el.id);
        }
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


interface ISaveValues
{
    uuid: string;
    value: string;
    type?: string;
    __cls_uid?: string;
}


export function collectSaveData(p: Element, cls_uid?:string): ISaveValues[]
{
    if (p == null)
        return null;

    let checklistData: ISaveValues[] = [];

    let nodeName = p.nodeName.toLowerCase();
    
    if (p.nodeType === Node.ELEMENT_NODE && ("input" === nodeName || "textarea" === nodeName))
    {
        let uuid: string = (<Element>p).getAttribute("id") || "unknown";
        let type: string = (<Element>p).getAttribute("type") || "";
        let value = null;

        if ("checkbox" === type.toLowerCase())
        {
            value = (<HTMLInputElement>(<Element>p)).checked.toString().toLowerCase();
        }
        else if ("text" === type.toLowerCase())
        {
            value = (<HTMLInputElement>(<Element>p)).value;
            value = utils.normalizeNewLines(value);
        }
        else if ("textarea" === nodeName)
        {
            value = (<HTMLTextAreaElement>(<Element>p)).value;
            value = utils.normalizeNewLines(value);
            type = "textarea";
        }

        // console.log("value", p, "type:", type, "value", value, "uuid", uuid);
        return [{
              "uuid": uuid
            , "value": value
            //, "type": type
            , "__cls_uid": cls_uid
        }];
    }
    else if (p.children.length)
    {
        for (let i = 0; i < p.children.length; i++)
        {
            let ret = collectSaveData(p.children[i], cls_uid);
            for (let j = 0; j < ret.length; ++j)
            {
                checklistData.push(ret[j]);
            }
            
        } // Next i 

    } // End if (children.length) 

    return checklistData;
} // End Sub collectSaveData