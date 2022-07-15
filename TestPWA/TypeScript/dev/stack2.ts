﻿

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


    public constructor(item: T, hasChildren: boolean , level?:number)
    {
        level = level || 0;

        this.data = item;
        this.level = level;
        this.hasChildren = hasChildren;
    }

}







class sillyIterator
{

    
    public static useIterateThroughAnything<T>(rootNode: T, getChildren: (baseNode: T) => T[]): void
    {
        let tbl = document.querySelectorAll("table.Excel").item(0);

        sillyIterator.iterateThroughAnything<Element>(tbl, function (x: Element)
        {
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




    public static iterateThroughNodes(rootNode: Node): void
    {
        let stack = new InsertableStack<InsertableStackFrame<Node>>();
        
        function hasChildren(someNode: Node): boolean
        {
            return (someNode.childNodes.length > 0);
        }


        function getChildren(baseNode: Node): NodeListOf<ChildNode>
        {
            return baseNode.childNodes;
        }

        function uuidv4(): string
        {
            return "10000000-1000-4000-8000-100000000000".replace(/[018]/g, function (b: string)
            {
                let c = parseInt(b);
                return (c ^ ((window.crypto || window.msCrypto)).getRandomValues(new Uint8Array(1))[0] & 15 >> c / 4).toString(16)
            });
        }


        // let count = 0;
        stack.push(new InsertableStackFrame<Node>(rootNode, hasChildren(rootNode)));

        // count++;
        //if (count != stack.actual())
        //{
        //    debugger;
        //    console.log("foo");
        //}


        function getNodeData(currentElement: Element, isDir:boolean)
        {
            let checklistData: IXmlStructure2 = {
                "uuid": currentElement.id
                , "parent_uuid": (currentElement.parentElement ? currentElement.parentElement.id : null)
                , "tagName": currentElement.tagName
                , "properties": null // _getProperties(<Element>p)
                , "children": isDir ? [] : null
                , "sort": 0
            };

            return checklistData;
        }

        let currentParent: IXmlStructure2 = null;




        while (!stack.isEmpty)
        {
            let node: InsertableStackFrame<Node> = stack.pop();
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

                let entries: NodeListOf<ChildNode> = getChildren(node.data);
                
                for (let i: number = 0; i < entries.length; ++i)
                {
                    let entry = entries.item(i);
                    let hasChild: boolean = hasChildren(entry);
                    stack.insertAfterCurrent(new InsertableStackFrame<Node>(entry, hasChild, hasChild ? node.level + 1 : node.level));
                    //count++;
                    //if (count != stack.actual())
                    //{
                    //    debugger;
                    //    console.log("foo");
                    //}
                }

                stack.unmarkCurrent();
            } // Whend

            console.log((node.hasChildren ? "directory: " : "") + "node.data [lvl " + node.level.toString() + "]: ", node.data);



            

            if (node.data.nodeType === Node.ELEMENT_NODE)
            {
                let id = (<Element>node.data).getAttribute("id");
                // let guid = uuid.newGuid();
                if (id == null || id == "null")
                    (<Element>node.data).setAttribute("id", uuidv4());

                id = (<Element>node.data).getAttribute("id");

                if (node.hasChildren)
                {
                    let lastParent = currentParent;
                    currentParent = getNodeData(<Element><any>node, node.hasChildren);
                    currentParent.parent = lastParent;

                    if (lastParent != null)
                        lastParent.children.push(currentParent);
                }
                else
                {
                    let noob = getNodeData(<Element><any>node, node.hasChildren);
                    noob.parent = currentParent;
                    currentParent.children.push(noob);
                }

            }
            
        } // Whend

        console.log(currentParent);
    } // End Sub iterateThroughNodes 


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
