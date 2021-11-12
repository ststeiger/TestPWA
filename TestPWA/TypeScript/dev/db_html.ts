
import * as autobind_autotrace from "./autobind_autotrace.js";
import * as uuid from "./uuid.js";
import * as utils from "./string_utils.js";


// https://stackoverflow.com/questions/39282253/how-can-i-alias-a-default-import-in-javascript
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/import
import { TableWrapper as tableWrapper, GroupedTableWrapper as groupedTableWrapper, GroupedData } from "./table_wrapper.js";

let _ = {
    "ab": autobind_autotrace
};

function _getProperties(el: Element):string[][]
{
    let arr:string[][] = []; 

    for (let i = 0, atts = el.attributes, n = atts.length; i < n; i++)
    {
        let a = atts[i].nodeName;
        arr.push([a, el.getAttribute(a)]);
    } // Next i 

    return arr;
} // End Function _getProperties 


export function collectStructure(p: Node, parent?: string, sort?: number):IXmlStructure 
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
    else if (children.length)
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
} // End Function collectStructure



function _createElement(data: IXmlStructure):Element 
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
        } // End if (tagName === "input" || tagName === "textarea") 

    } // End if (data.uuid != null) 


    let isVertical = false;

    if (data.properties)
    {

        for (let i = 0; i < data.properties.length; ++i)
        {

            if ("class" == data.properties[i][0] && String(data.properties[i][1]).indexOf("verticalColumn") != -1)
            {
                isVertical = true;
            } // End if ("class" == data.properties[i][0]) 

            if (null != data.properties[i][0])
                el.setAttribute(data.properties[i][0], data.properties[i][1]);
        } // Next i 

    } // End if (data.properties) 

    if (data.innerHtml)
    {
        el.innerHTML = data.innerHtml;

        let iPAD = String(navigator.userAgent).toLowerCase().indexOf("ipad") != -1;
        // iPAD = true;

        if (isVertical && iPAD)
        {
            // https://developer.mozilla.org/en-US/docs/Web/CSS/font-weight
            let font = "Arial";
            let txt = el.textContent || el.innerText;
            el.innerHTML = "";

            if ("Wartungs oder Prüfintervall [Jahr]" === txt)
                txt = "Wartungs oder\r\nPrüfintervall [Jahr]";

            let img = document.createElement("IMG");
            // div.setAttribute("style", "background-image: url(\"../cgi-bin/GenerateImage.ashx?no_cache=1636450422429&bgcolor=%23FFF&rotate=true&text=" + encodeURIComponent(txt) + "\");");

            img.setAttribute("src", "../cgi-bin/GenerateImage.ashx?no_cache=1636450422429&bgcolor=%23FFF&fontFamily=" + encodeURIComponent(font) + "&fontSize=15&rotate=true&text=" + encodeURIComponent(txt) );
            img.setAttribute("alt", txt);
            el.appendChild(img);
        } // End if (isVertical && iPAD) 

    } // End if (data.innerHtml) 
    
    return el;
} // End Function _createElement 



export function assembleStructure(container: IXmlStructure, parent?: Node):Node 
{
    parent = parent || document.createDocumentFragment();
    let newParentElement = _createElement(container);

    for (let i = 0; i < container.children.length; ++i)
    {
        assembleStructure(container.children[i], newParentElement);
    } // Next i 

    parent.appendChild(newParentElement);

    return parent;
} // End Function assembleStructure 




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

        for (let j = 0; j < propArray.rowCount; ++j)
        {
            let currentItem = propArray.row(j); 
            props.push([currentItem.PRO_Name, currentItem.PRO_Value]); 
        } // Next i 

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
    } // Next i 

    if (lvl === 0 && obj.children.length === 1)
        return obj.children[0];

    return obj;
} // End Function constructRecursiveDataStructure 


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
            } // Next j 
            
        } // Next i 

    } // End if (children.length) 

    return checklistData;
} // End Sub collectSaveData


// LIFO-data-structure 
class Stack<T>
{
    protected items: T[];


    // Array is used to implement stack
    constructor()
    {
        this.items = [];
    }

    // push function
    public push(element: T)
    {
        // push element into the items
        this.items.push(element);
    }

    public pop(): T
    {
        // return top most element in the stack
        // and removes it from the stack
        // Underflow if stack is empty
        if (this.items.length == 0)
        {
            throw new Error("Stack underflow");
        }
        
        return this.items.pop();
    }

    public peek():T
    {
        // return the top most element from the stack
        // but does'nt delete it.
        return this.items[this.items.length - 1];
    }


    // return true if stack is empty
    get isEmpty(): boolean
    {
        return this.items.length == 0;
    }


    get count(): number
    {
        return this.items.length;
    }


    public debugDisplay():string 
    {
        let str:string[] = [];
        for (let i = 0; i < this.items.length; i++)
            str.push(String(this.items[i]));

        return str.join(" ");
    }

} // End Class Stack<T> 



interface AssociativeArray<T>
{
    [key: string]: T;
}


function makeAssociativeArray(properties: string[][], caseSensitive?: boolean): AssociativeArray<string>
{
    caseSensitive = caseSensitive || false;

    let obj: AssociativeArray<string>= {};
    for (let i = 0; i < properties.length; ++i)
    {
        let key = properties[i][0];

        if (!key)
            continue;

        if (!caseSensitive)
            key = key.toLowerCase();

        obj[key] = properties[i][1];
    }

    return obj;
} // End Function makeAssociativeArray 


// https://stackoverflow.com/questions/181596/how-to-convert-a-column-number-e-g-127-into-an-excel-column-e-g-aa
//  It assumes Column A is columnNumber 1
function getExcelColumnName(columnNumber:number):string
{
    let columnName = "";

    while (columnNumber > 0)
    {
        let modulo = (columnNumber - 1) % 26;
        columnName = String.fromCharCode('A'.charCodeAt(0) + modulo) + columnName;

        // https://stackoverflow.com/questions/4228356/how-to-perform-an-integer-division-and-separately-get-the-remainder-in-javascr
        columnNumber = Math.floor((columnNumber - modulo) / 26);
    } // Whend 

    return columnName;
} // End Function getExcelColumnName 


// https://stackoverflow.com/questions/848147/how-to-convert-excel-sheet-column-names-into-numbers
// getExcelColumnNumber("AA")
// This function should work for an arbitrary length column name.
function getExcelColumnNumber(excelColumnName: string)
{
    excelColumnName = excelColumnName.toUpperCase();

    let number = 0;
    let pow = 1;
    for (let i = excelColumnName.length - 1; i >= 0; i--)
    {
        number += (excelColumnName.charCodeAt(i) - 'A'.charCodeAt(0) + 1) * pow;
        pow *= 26;
    }

    return number;
} // End Function getExcelColumnNumber 


// https://stackoverflow.com/questions/3932382/traversing-directories-without-using-recursion/30218705#30218705
export function iterateOverStructure(container: IXmlStructure)
{
    let stack = new Stack<IXmlStructure>();
    stack.push(container);

    let currentRow = 0;
    let startColumn = 0;
    let endColumn = 0;
    
    while (!stack.isEmpty)
    {
        let element = stack.pop();
        
        let properties: AssociativeArray<string> = makeAssociativeArray(element.properties);
        // console.log(properties);

        if ("tr" === element.tagName)
        {
            currentRow += 1;
            // console.log(element, currentRow);
        } // End if ("tr" === element.tagName) 

        if ("td" === element.tagName)
        {
            let colSpan = parseInt(properties["colspan"] || "1");
            let rowSpan = parseInt(properties["rowspan"] || "1");

            startColumn = endColumn + 1;
            endColumn = startColumn + colSpan - 1;

            // console.log(element);
            // console.log("y:", currentRow, "x1:", startColumn, "x2", endColumn, "colspan", colSpan, "rowSpan", rowSpan);
        } // End if ("td" === element.tagName) 


        let children: IXmlStructure[] = element.children;

        for (let i = children.length-1; i > -1 ; --i)
        {
            stack.push(children[i]);
        } // Next i 

    } // Whend 

} // End Function iterateOverStructure 
