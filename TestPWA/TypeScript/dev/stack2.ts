

import * as dbl from "./linked_list_double.js";



// LIFO/FIFO-data-structure 
export class InsertableStack<T>
{
    protected items: dbl.DoublyLinkedList<T>;
    protected m_markedNode: dbl.DoublyLinkedNode<T>;


    // Array is used to implement stack
    constructor()
    {
        this.items = new dbl.DoublyLinkedList<T>();
        // let yyy = new dbl.DoublyLinkedNode(null);

        this.push = this.push.bind(this);
        this.pop = this.pop.bind(this);
        this.dequeue = this.dequeue.bind(this);
        this.peek = this.peek.bind(this);
        this.debugDisplay = this.debugDisplay.bind(this);
    }


    // push function
    public push(element: T)
    {
        // push element into the items
        this.items.append(element);
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

        let ret: T = this.items.tail.value
        this.items.removeLast();
        return ret;
    }


    public dequeue(): T
    {
        let ret:T = this.items.head.value;
        this.items.removeFirst();
        return ret;
    }


    public peek():T
    {
        // return the top most element from the stack
        // but doesn't delete it.
        return this.items.tail.value;
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


    public markCurrent(): void
    {
        this.m_markedNode = this.items.tail;
    }


    public unmarkCurrent():void
    {
        this.m_markedNode = null;
    }


    public insertAfterCurrent(data: T): void
    {
        if (this.m_markedNode == null)
        {
            this.items.prepend(data);
            return;
        }

        this.items.addAfter(this.m_markedNode, data);
    }


    public actual():number
    {
        let cnt = 0;
        let currentList = this.items.head;
        while (currentList !== null)
        {
            cnt++;
            currentList = currentList.next;
        }

        return cnt;
    }



    public debugDisplay(fn?: (x: T) => string)
    {
        fn = fn || function (xx: T)
        {
            if (xx == null)
                return null;

            return String(xx);
        };

        let str: string[] = [];
        let currentList = this.items.head;
        while (currentList !== null)
        {
            str.push(fn(currentList.value));
            currentList = currentList.next;
        }

        return str.join(" ");
    }


}


export class InsertableStackFrame<T>
{
    public data: T ; // The custom data 
    public level:number; // = answers question "What is the recursion level" 
    public hasChildren: boolean; // = answers question "Is directory or not" ?
    public localSort: number; // = answers question "What is the recursion level" 
    public globalSort: number; // = answers question "What is the recursion level" 

    public recursionData: IXmlStructure;


    public constructor(item: T, hasChildren: boolean, level?: number, recursionData?: IXmlStructure)
    {
        level = level || 0;

        this.data = item;
        this.level = level;
        this.hasChildren = hasChildren;
        this.recursionData = recursionData;
    }

}



interface IChecklistColumn
{
    isEmpty: boolean;
    Label: string;
    widthInMM: number;
    widthInMM2: number;
    widthInPixel: number;
}


interface IChecklistRow
{
    Label: string;
    widthInMM: number;
    heightInPixel: number;
    isEmpty: boolean;
}


interface IChecklistCell
{
    Column: number;
    Row: number;

    colSpan: number;
    rowSpan: number;

    className: string;

    Style: string;
    innerHTML: string;
}


interface ModuleChecklist
{
    columns: IChecklistColumn[];
    rows: IChecklistRow[];
    cells: IChecklistCell[];

    images: any[];
    maxColumnIndex: number; // zero-based
    maxRowIndex: number; // zero-based
}


interface IRecursionConditions
{
    hasChildren: (someNode: Node) => boolean;
    getChildren: (baseNode: Node) => NodeListOf<ChildNode>;
    getNodeData: (currentNode: Node, isDir: boolean) => IXmlStructure;
}



interface ISaveData
{
    ELE_UID: string;
    ELE_Parent_UID: string;
    ELE_CLV_UID?: string;
    ELE_TagName: string;
    ELE_Level?: number;
    ELE_Sort?: number;
    ELE_RecSort?: string;
    ELE_InnerHtml?: string;
}


class sillyIterator
{



    // https://stackoverflow.com/a/14780463
    public absolute(base: string, relative: string)
    {
        let stack = base.split("/"),
            parts = relative.split("/");

        stack.pop(); // remove current file name (or empty string)

        // (omit if "base" is the current folder without trailing slash)
        for (var i = 0; i < parts.length; i++)
        {
            if (parts[i] == ".")
                continue;
            if (parts[i] == "..")
                stack.pop();
            else
                stack.push(parts[i]);
        }

        return stack.join("/");
    }


    
    public static useIterateThroughAnything<T>(rootNode: T, getChildren: (baseNode: T) => T[]): void
    {
        let tbl = document.querySelectorAll("table.Excel").item(0);

        sillyIterator.iterateThroughAnything<Element>(tbl, function (x: Element)
        {
            // The Array.prototype.slice.call() approach has been around for a long time. 
            // It works in all modern browsers, and back to at least IE6.
            // The Array.from() method works in all modern browsers, but has no IE support(only Edge). 
            // You can push support back to at least IE9 with a polyfill, though.
            // array.map: IE10+
            // array.filter IE9+

            return Array.prototype.slice.call(x.children);
        });

        sillyIterator.iterateThroughAnything<Node>(tbl, function (x: Node)
        {
            return Array.prototype.slice.call(x.childNodes);
        });
    }


    public static iterateThroughAnything<T>(rootNode: T, getChildren:(baseNode: T) => T[]): void
    {
        let stack = new InsertableStack<InsertableStackFrame<T>>();


        function hasChildren(someNode: T): boolean
        {
            return (getChildren(someNode).length > 0);
        }


        // let count = 0;
        stack.push(new InsertableStackFrame<T>(rootNode, hasChildren(rootNode)));

        // count++;
        //if (count != stack.actual())
        //{
        //    debugger;
        //    console.log("foo");
        //}


        while (!stack.isEmpty)
        {
            let node: InsertableStackFrame<T> = stack.pop();
            //count--;
            //if (count != stack.actual())
            //{
            //    debugger;
            //    console.log("foo");
            //}

            // if (node.level > 5) continue;

            if (node.hasChildren)
            {
                stack.markCurrent();

                let entries: T[] = getChildren(node.data);

                for (let i: number = 0; i < entries.length; ++i)
                {
                    let entry = entries[i];
                    let hasChild: boolean = hasChildren(entry);
                    stack.insertAfterCurrent(new InsertableStackFrame<T>(entry, hasChild, hasChild ? node.level + 1 : node.level));
                    //count++;
                    //if (count != stack.actual())
                    //{
                    //    debugger;
                    //    console.log("foo");
                    //}
                }

                stack.unmarkCurrent();
            } // Whend 

            if (node.hasChildren)
            {
                console.log("directory: ");
            }

            console.log("node.data [lvl " + node.level.toString() + "]: ", node.data);
        } // Whend

    } // End Sub iterateThroughAnything


    public static compareStrings(string1:string, string2:string, ignoreCase:boolean, useLocale?:boolean)
    {
        if (string1 == null && string2 == null)
            return true;

        if (string1 == null || string2 == null)
            return false;

        if (ignoreCase)
        {
            if (useLocale)
            {
                string1 = string1.toLocaleLowerCase();
                string2 = string2.toLocaleLowerCase();
            }
            else
            {
                string1 = string1.toLowerCase();
                string2 = string2.toLowerCase();
            }
        }

        return string1 === string2;
    } // End Function compareStrings

    // var obj = [{ "PRO_UID": "7E7BED97-6F65-4827-8829-001676E3D03B", "PRO_Name": "align", "PRO_Value": "left", "PRO_ELE_UID": "F96C3755-89CD-466D-93F7-D00E85FDF05E" }, { "PRO_UID": "B4B41211-62BC-42C4-B420-00209B8A2C8F", "PRO_Name": "class", "PRO_Value": "slimBlackBorder", "PRO_ELE_UID": "671DB8C8-927C-4720-B17E-0EDD9C01B7AD" }, { "PRO_UID": "0CAF4193-AC63-432D-9579-002AA68DAC35", "PRO_Name": "align", "PRO_Value": "left", "PRO_ELE_UID": "FED37EA5-921D-4940-9504-2BF913EA0453" }];
    public static objectArrayToXml(obj:any, pretty?:boolean)
    {
        

        function _xmlAttributeEscape(inputString:string)
        {
            var output = [];

            for (var i = 0; i < inputString.length; ++i)
            {
                switch (inputString[i])
                {
                    case '&':
                        output.push("&amp;");
                        break;
                    case '"':
                        output.push("&quot;");
                        break;
                    case "<":
                        output.push("&lt;");
                        break;
                    case ">":
                        output.push("&gt;");
                        break;
                    default:
                        output.push(inputString[i]);
                }


            }

            return output.join("");
        }


        let xml = [];

        if (pretty == null)
            pretty = true;

        xml.push("<?xml version=\"1.0\" encoding=\"utf-16\"?>");

        if (pretty) xml.push("\r\n");

        xml.push("<table xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">");
        xml.push("\r\n");

        for (let i = 0; i < obj.length; ++i)
        {
            if (pretty) xml.push("  ");

            xml.push("<row>");
            if (pretty) xml.push("\r\n");


            for (let key in obj[i])
            {
                if (obj[i].hasOwnProperty(key))
                {
                    let value = obj[i][key];

                    if (pretty) xml.push("    ");

                    if (value == null)
                        xml.push("<" + key +" xsi:nil=\"true\" />");
                    else
                        xml.push("<" + key + ">");

                    xml.push(_xmlAttributeEscape(value));

                    if (value != null)
                    {
                        xml.push("</" + key + ">");
                    }
                    
                    if (pretty) xml.push("\r\n");
                }
            } 

            if (pretty) xml.push("  ");
            xml.push("</row>");
            if (pretty) xml.push("\r\n");
        }

        xml.push("</table>");

        let result = xml.join("");
        return result;
    }


    public static serializeMe()
    {
        var x = [{ "PRO_UID": "7E7BED97-6F65-4827-8829-001676E3D03B", "PRO_Name": "align", "PRO_Value": "left", "PRO_ELE_UID": "F96C3755-89CD-466D-93F7-D00E85FDF05E" }, { "PRO_UID": "B4B41211-62BC-42C4-B420-00209B8A2C8F", "PRO_Name": "class", "PRO_Value": "slimBlackBorder", "PRO_ELE_UID": "671DB8C8-927C-4720-B17E-0EDD9C01B7AD" }, { "PRO_UID": "0CAF4193-AC63-432D-9579-002AA68DAC35", "PRO_Name": "align", "PRO_Value": "left", "PRO_ELE_UID": "FED37EA5-921D-4940-9504-2BF913EA0453" }];

        let prettifyXml = function (sourceXml:string)
        {
            var xmlDoc = new DOMParser().parseFromString(sourceXml, 'application/xml');
            var xsltDoc = new DOMParser().parseFromString([
                // describes how we want to modify the XML - indent everything
                '<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform">',
                '  <xsl:strip-space elements="*"/>',
                '  <xsl:template match="para[content-style][not(text())]">', // change to just text() to strip space in text nodes
                '    <xsl:value-of select="normalize-space(.)"/>',
                '  </xsl:template>',
                '  <xsl:template match="node()|@*">',
                '    <xsl:copy><xsl:apply-templates select="node()|@*"/></xsl:copy>',
                '  </xsl:template>',
                '  <xsl:output indent="yes"/>',
                '</xsl:stylesheet>',
            ].join('\n'), 'application/xml');

            var xsltProcessor = new XSLTProcessor();
            xsltProcessor.importStylesheet(xsltDoc);
            var resultDoc = xsltProcessor.transformToDocument(xmlDoc);

            var resultXml = new XMLSerializer().serializeToString(resultDoc);
            resultXml = '<?xml version="1.0" encoding="utf-16"?>\r\n' + resultXml;
            return resultXml;
        };


        // https://blogs.msmvps.com/martin-honnen/2009/04/13/creating-xml-with-namespaces-with-javascript-and-the-w3c-dom/
        let xmlNs = 'http://www.w3.org/2001/XMLSchema';
        let xsiNs = 'http://www.w3.org/2001/XMLSchema-instance';

        // let doc = document.implementation.createDocument(xmlNs, 'table', null);
        let doc = document.implementation.createDocument(null, 'table', null);
        //doc.documentElement.setAttributeNS('http://www.w3.org/2000/xmlns/', 'xmlns:xsi', xsiNs);
        let tableElement = doc.documentElement;
        tableElement.setAttributeNS('http://www.w3.org/2000/xmlns/', 'xmlns:xsi', xsiNs);


        for (let i = 0; i < x.length; ++i)
        {
            // let rowElement = doc.createElementNS(xmlNs, 'row');
            let rowElement = doc.createElement('row');

            for (let key in x[i])
            {
                if (x[i].hasOwnProperty(key))
                {
                    let value = (<any>x[i])[key];
                    // let column = doc.createElementNS(xmlNs, key);
                    let column = doc.createElement(key);

                    if(value == null)
                        column.setAttributeNS(xsiNs, 'xsi:nil', 'true');
                    else
                        column.textContent = value;

                    rowElement.appendChild(column);
                }
            } // numeric descending

            tableElement.appendChild(rowElement);
        }

        // doc.appendChild(tableElement);


        const pi = doc.createProcessingInstruction('xml', 'version="1.0" encoding="UTF-16"');
        doc.insertBefore(pi, doc.firstChild);

        const serializer = new XMLSerializer();
        let xmlStr = serializer.serializeToString(doc);
        if (window.XSLTProcessor) xmlStr = prettifyXml(xmlStr);
        console.log(xmlStr);
    }


    public static _padStart(str:string, targetLength:number, padString:string)
    {
        targetLength = Math.floor(targetLength) || 0;
        if (targetLength < str.length) return String(str);

        padString = padString ? String(padString) : " ";

        var pad = "";
        var len = targetLength - str.length;
        var i = 0;
        while (pad.length < len)
        {
            if (!padString[i])
            {
                i = 0;
            }
            pad += padString[i];
            i++;
        }

        return pad + String(str).slice(0);
    }
    

    public static _padEnd(str:string, targetLength:number, padString:string)
    {
        targetLength = Math.floor(targetLength) || 0;
        if (targetLength < str.length) return String(str);

        padString = padString ? String(padString) : " ";

        var pad = "";
        var len = targetLength - str.length;
        var i = 0;
        while (pad.length < len)
        {
            if (!padString[i])
            {
                i = 0;
            }
            pad += padString[i];
            i++;
        }

        return String(str).slice(0) + pad;
    }


    public static iterateThroughNodes(rootNode: Node, recursionConditions: IRecursionConditions): void
    {
        let T_ChecklistElements: ISaveData[] = [];

        let stack = new InsertableStack<InsertableStackFrame<Node>>();
        // let count = 0;

        let rootNodeData = recursionConditions.getNodeData(rootNode, recursionConditions.hasChildren(rootNode));
        rootNodeData.sort = 0;
        rootNodeData.recSort = sillyIterator._padStart(rootNodeData.sort.toString(), 10, "0");
        
        rootNodeData.parent_uuid = null;

        let rootFrame = new InsertableStackFrame<Node>(rootNode, recursionConditions.hasChildren(rootNode), 0, rootNodeData);
        rootFrame.localSort = 0;
        stack.push(rootFrame);
        
        // count++;
        //if (count != stack.actual())
        //{
        //    debugger;
        //    console.log("foo");
        //}

        let globalSort = 0;
        let root: InsertableStackFrame<Node> = null;

        while (!stack.isEmpty)
        {
            let node: InsertableStackFrame<Node> = stack.pop();
            node.globalSort = globalSort;

            //count--;
            //if (count != stack.actual())
            //{
            //    debugger;
            //    console.log("foo");
            //}

            if (root == null)
            {
                node.recursionData.parent_uuid = null;
                root = node;
            }

            // if (node.level > 5) continue;

            if (node.hasChildren)
            {
                stack.markCurrent();

                let entries: NodeListOf<ChildNode> = recursionConditions.getChildren(node.data);
                
                for (let i: number = 0; i < entries.length; ++i)
                {
                    let entry = entries.item(i);
                    let hasChild: boolean = recursionConditions.hasChildren(entry);

                    let nodeData = recursionConditions.getNodeData(entry, recursionConditions.hasChildren(entry));
                    nodeData.sort = i;
                    nodeData.recSort = node.recursionData.recSort + "." + sillyIterator._padStart(i.toString(), 10, "0");
                    node.recursionData.children.push(nodeData);

                    let childFrame = new InsertableStackFrame<Node>(entry, hasChild, hasChild ? node.level + 1 : node.level, nodeData);
                    childFrame.localSort = i;
                    stack.insertAfterCurrent(childFrame);

                    //count++;
                    //if (count != stack.actual())
                    //{
                    //    debugger;
                    //    console.log("foo");
                    //}

                } // Next i 

                stack.unmarkCurrent();
            } // Whend

            // console.log((node.hasChildren ? "directory: " : "") + "node.data [lvl " + node.level.toString() + "]: ", node.data);


            let record:ISaveData = 
            {
                ELE_UID: node.recursionData.uuid,
                ELE_Parent_UID: node.recursionData.parent_uuid,
                // ELE_CLV_UID?: string,
                ELE_TagName: node.recursionData.tagName,
                // ELE_Level: node.level,
                ELE_Sort: node.recursionData.sort,
                // ELE_Sort: node.globalSort, 
                ELE_RecSort: node.recursionData.recSort,
                
                // ELE_InnerHtml?: string;
            };


            if (node.data.nodeType === Node.ELEMENT_NODE)
            {

                if (sillyIterator.compareStrings(node.data.nodeName, "td", true))
                {
                    record.ELE_InnerHtml = (<Element>node.data).innerHTML;
                }


            }
            else if (node.data.nodeType === Node.TEXT_NODE)
            {
                record.ELE_InnerHtml = node.data.textContent;
            }

            T_ChecklistElements.push(record);


            ++globalSort; 
        } // Whend

        // console.log("collected data:", dataCollector.RecursionData);
        
        // console.log("T_ChecklistElements: ", T_ChecklistElements);
        console.log("T_ChecklistElements: ", JSON.stringify(T_ChecklistElements, null, 2));
        console.log("recursionData: ", root.recursionData);
    } // End Sub iterateThroughNodes



    public static iterateThroughNodes2(rootNode: Node): void
    {
        sillyIterator.iterateThroughNodes(rootNode, {
            hasChildren: function (someNode: Node): boolean
            {
                return (someNode.childNodes.length > 0);
            }
            , getChildren: function (baseNode: Node): NodeListOf<ChildNode>
            {
                return baseNode.childNodes;
            }
            , getNodeData: function (currentNode: Node, isDir: boolean): IXmlStructure
            {
                function getDataSet(el: Element): any 
                {
                    el.setAttribute("data-foo", "hello");
                    return (<any>el).dataset;
                }


                function getAttributes(node: Node): string[][]
                {
                    let arr: string[][] = [];



                    // The following constants have been deprecated and are not in use anymore:
                    // Node.ENTITY_REFERENCE_NODE(5), Node.ENTITY_NODE(6), and Node.NOTATION_NODE(12).
                    // Warning: ProcessingInstruction nodes are only supported in XML documents, not in HTML documents
                    // <?xml version="1.0"?>
                    // if (node.nodeType === Node.PROCESSING_INSTRUCTION_NODE) document.createProcessingInstruction("target", "data");
                    // if (node.nodeType === Node.CDATA_SECTION_NODE) document.createCDATASection;
                    // if (node.nodeType === Node.COMMENT_NODE) document.createComment("test");
                    // if (node.nodeType === Node.TEXT_NODE) document.createTextNode("some text");
                    // if (node.nodeType === Node.DOCUMENT_TYPE_NODE) document.doctype;

                    if (node.nodeType === Node.ELEMENT_NODE)
                    {

                        for (let i = 0, atts = (<Element>node).attributes, n = atts.length; i < n; i++)
                        {
                            let a = atts[i].nodeName;
                            arr.push([a, (<Element>node).getAttribute(a)]);
                        } // Next i

                    } // End if (node.nodeType === Node.ELEMENT_NODE) 

                    return arr;
                } // End Function _getAttributes


                function getAllProps(node: Node)
                {
                    let props: string[][] = [];
                    for (let key in node)
                    {
                        props.push([key, (<any>node)[key]]);
                    }

                    return props;
                }


                function getCustomProps(node: Node)
                {
                    let props: string[][] = [];
                    for (let key in node)
                    {
                        // The hasOwnProperty() method returns true
                        // if the specified property is a direct property of the object 
                        // — even if the value is null or undefined. 
                        // The method returns false if the property is inherited,
                        // or has not been declared at all. 

                        // Unlike the in operator, this method does not check
                        // for the specified property in the object's prototype chain.
                        if (node.hasOwnProperty(key))
                            props.push([key, (<any>node)[key]]);
                    }

                    return props;
                }


                function getDefaultProps(node: Node)
                {
                    let props: string[][] = [];
                    for (let key in node)
                    {
                        if (!node.hasOwnProperty(key))
                            props.push([key, (<any>node)[key]]);
                    }

                    return props;
                }

                function _newid()
                {
                    return "10000000-1000-4000-8000-100000000000".replace(/[018]/g, function (b)
                    {
                        let c = parseInt(b);
                        return (c ^ ((window.crypto || window.msCrypto)).getRandomValues(new Uint8Array(1))[0] & 15 >> c / 4).toString(16)
                    });
                }

                function _uidToLower(text:string)
                {
                    if (text == null || text == "null")
                        return _newid().toLowerCase();

                    if (text.charAt(0) == "_")
                        text = text.substr(1)

                    return text.toLowerCase();
                }


                if (currentNode.nodeType === Node.ELEMENT_NODE)
                {
                    var id = (<Element>currentNode).getAttribute("id");
                    (<Element>currentNode).setAttribute("id", "_" + _uidToLower(id));
                }


                // GetNodeData
                let checklistData: IXmlStructure = {
                    "uuid": (<any>currentNode).id
                    , "parent_uuid": (currentNode.parentElement ? currentNode.parentElement.id : null)
                    , "tagName": currentNode.nodeName
                    , "properties": getAttributes(currentNode)
                    , "customProperties": getCustomProps(currentNode)
                    , "children": isDir ? [] : null
                    , "sort": 0
                };

                return checklistData;
            }
        });
    }


    public static iterateThroughElements(rootElement: Element): void
    {
        let stack = new InsertableStack<InsertableStackFrame<Element>>();

        function hasChildren(someElement: Element): boolean
        {
            return (someElement.children.length > 0);
        }


        function getChildren(baseElement: Element): HTMLCollection
        {
            return baseElement.children;
        }


        // let count = 0;
        stack.push(new InsertableStackFrame<Element>(rootElement, hasChildren(rootElement)));

        // count++;
        //if (count != stack.actual())
        //{
        //    debugger;
        //    console.log("foo");
        //}


        while (!stack.isEmpty)
        {
            let node: InsertableStackFrame<Element> = stack.pop();
            //count--;
            //if (count != stack.actual())
            //{
            //    debugger;
            //    console.log("foo");
            //}

            // if (node.level > 5) continue;

            if (node.hasChildren)
            {
                stack.markCurrent();

                let entries: HTMLCollection = getChildren(node.data);
                for (let i: number = 0; i < entries.length; ++i)
                {
                    let entry = entries.item(i);
                    let hasChild: boolean = hasChildren(entry);

                    node.recursionData.sort



                    stack.insertAfterCurrent(new InsertableStackFrame<Element>(entry, hasChild, hasChild ? node.level + 1 : node.level));
                    //count++;
                    //if (count != stack.actual())
                    //{
                    //    debugger;
                    //    console.log("foo");
                    //}
                }

                stack.unmarkCurrent();
            } // Whend 

            if (node.hasChildren)
            {
                console.log("directory: ");
            }
            
            console.log("node.data [lvl " + node.level.toString() + "]: ", node.data);
        } // Whend

    } // End Sub iterateThroughElements 




    private static InsertableStackIterateDirectory2(rootPath: string):void
    {
        let stack: InsertableStack<InsertableStackFrame<string>> = new InsertableStack<InsertableStackFrame<string>>();


        let context = {
            Response: {
                Write: function (x: any) { console.log(x); }
            }
        };

        function hasChildren(rootPath: string): boolean
        {
            return false;
        }


        function getChildren(rootPath: string): string[]
        {
            return [];
        }
        
        stack.push(new InsertableStackFrame<string>(rootPath, hasChildren(rootPath)));
        
        while (!stack.isEmpty)
        {
            let node: InsertableStackFrame<string> = stack.pop();
            


            if (node.level > 5) continue;

            if (node.hasChildren)
            {
                stack.markCurrent();

                let entries: string[] = getChildren(node.data);
                for (let i:number = 0; i < entries.length; ++i)
                {
                    let withChild: boolean = hasChildren(entries[i]);
                    stack.insertAfterCurrent(new InsertableStackFrame<string>(entries[i], withChild, withChild ? node.level + 1 : node.level));
                }

                stack.unmarkCurrent();
            } // Whend 

            if (node.hasChildren)
                context.Response.Write("Directory:  ");

            context.Response.Write(node.data);
            context.Response.Write("   [");
            context.Response.Write(node.level);
            context.Response.Write("]");
            context.Response.Write("\r\n");
        } // Whend 

    } // End Sub InsertableStackIterateDirectory 



    // https://dev.to/joelbonetr/ways-of-iterating-over-a-nodelist-1574
    // https://www.typescriptlang.org/play?target=1#code/FANwhgTgBApgNjAtjAdgFwM5QLxQCYD2AxgK7LoB0AjiTBAJ4DK8MRaBEAgnHABQBEeAJYh+ASgDcwYAHoAVMABmHKLyIEUGNLATltBRTqSpMYqAG9gUI3opg8eAKIgTAGSFbUdXgHIicISIAax8AGlUzbAA+CytrKHVNAgQKOAIAcwEhNDowNCENKAB3DiCYPH5wlj0MSTiAXzr64DkZaWUIXgRtIRwoAAYJKF6AHhsTDFTUdLQACyGAagWhMWBLeKhu4ZzEPuqJimykXhWpZuklDi6YHr7B4agx-fRJhBQZ+agllbW463BoAAPPa6CYAbSEAF0zkA
    // _storeInDatabase


    protected createFilter(fn?: (node: Node) => number): NodeFilter
    {
        // Accept all currently filtered elements.
        function acceptNode(node: Node): number 
        {
            return NodeFilter.FILTER_ACCEPT;
        }

        if (fn == null)
            fn = acceptNode;


        // Work around Internet Explorer wanting a function instead of an object.
        // IE also *requires* this argument where other browsers don't.
        const safeFilter: NodeFilter = <NodeFilter><any>fn;
        (<any>safeFilter).acceptNode = fn;

        return safeFilter;
    }

    protected createVisibleListNodesFilter(): NodeFilter
    {
        // Accept all currently filtered elements.
        function acceptNode(node: Node): number 
        {
            if (!node)
                return NodeFilter.FILTER_REJECT;

            if (node.nodeType !== Node.ELEMENT_NODE)
                return NodeFilter.FILTER_REJECT;

            // if (window.getComputedStyle(<Element>node).display === "none") return NodeFilter.FILTER_REJECT;

            // if ((<HTMLElement>node).tagName !== "LI") return NodeFilter.FILTER_SKIP;

            return NodeFilter.FILTER_ACCEPT;
        }

        return this.createFilter(acceptNode);
    }


    public foo()
    {
        // let checklistData: IXmlStructure = db_html.collectStructure(document.querySelector("table"))
        // let saveData = db_html.collectSaveData(document.querySelector("table"), "__cls_uid");
        let checklistData: IXmlStructure = this.collectHtml(document.querySelector("table"))
    }

    
    // https://stackoverflow.com/questions/60317251/how-to-feature-detect-whether-a-browser-supports-dynamic-es6-module-loading
    public isImportSupported()
    {
        var supported = false; // not let
        try 
        {
            new Function("try { import('data:text/javascript;base64,Cg==').catch(function() {}); } catch (e) { }")();
            supported = true;
        } 
        catch (e) { }
        
        return supported;
    }


    public async isImportSupportedAsync():Promise<boolean>
    {
        try
        {
            return new Function("return import('data:text/javascript;base64,Cg==').then(function(r){ return true; })")();
        }
        catch (e)
        {
            return Promise.resolve(false);
        }
    }

    // https://stackoverflow.com/questions/64551229/queryselectorall-vs-nodeiterator-vs-treewalker-fastest-pure-js-flat-dom-iterat
    protected collectHtml(root: HTMLElement): IXmlStructure
    {
        let currentNode: Node;
        // https://developer.mozilla.org/en-US/docs/Web/API/Document/createNodeIterator
        // https://developer.mozilla.org/en-US/docs/Web/API/Document/createTreeWalker

        // let ni = document.createNodeIterator(el, NodeFilter.SHOW_ELEMENT);
        // let ni = document.createTreeWalker(this.m_tree, NodeFilter.SHOW_ELEMENT);
        let ni = document.createTreeWalker(root, NodeFilter.SHOW_ELEMENT, this.createVisibleListNodesFilter());

        ni.currentNode = root;

        let a: HTMLElement[] = [];

        let currentRow = 0;
        let startColumn = 0;
        let endColumn = 0;

        function _getProperties(el: Element): string[][]
        {
            let arr: string[][] = [];

            for (let i = 0, atts = el.attributes, n = atts.length; i < n; i++)
            {
                let a = atts[i].nodeName;
                arr.push([a, el.getAttribute(a)]);
            } // Next i 

            return arr;
        } // End Function _getProperties 


        let checklistData: IXmlStructure = {
              "uuid": "rootUid()"
            , "parent_uuid": null 
            , "tagName": root.nodeName 
            , "properties": _getProperties(<Element>root)
            , "children": []
            , "sort": 0 // sort
        };



        while (currentNode = ni.nextNode())
        {
            let guid = "uuid.newGuid()";

            // currentNode.parentNode




            if ("tr" === currentNode.nodeName)
            {
                currentRow += 1;
                // console.log(currentNode, currentRow);
            } // End if ("tr" === currentNode.nodeName)
            else if ("td" === currentNode.nodeName)
            {
                // let colSpan = parseInt(properties["colspan"] || "1");
                // let rowSpan = parseInt(properties["rowspan"] || "1");

                // startColumn = endColumn + 1;
                // endColumn = startColumn + colSpan - 1;

                // console.log(currentNode);
                // console.log("y:", currentRow, "x1:", startColumn, "x2", endColumn, "colspan", colSpan, "rowSpan", rowSpan);
            } // End if ("td" === element.tagName)


            if (currentNode.nodeName.toLowerCase() === "td")
            {
                let inputSort = 0;

                
                let children: Node[] = Array.prototype.slice.call(currentNode.childNodes);
                for (let i = 0; i < children.length; ++i)
                {
                    let tagName = children[i].nodeName.toLowerCase();

                    // if (children[i].nodeType === Node.TEXT_NODE && !string_utils.isNullOrWhiteSpace(children[i].nodeValue))
                    if (children[i].nodeType === Node.ELEMENT_NODE
                        && (tagName == "input" || tagName == "textarea")) 
                    {
                        // let ret = collectStructure(children[i], guid, inputSort++);
                        // checklistData.children.push(ret)
                    }

                }

            }



            a.push(<HTMLElement>currentNode);
        }

        return checklistData;
    }
}
