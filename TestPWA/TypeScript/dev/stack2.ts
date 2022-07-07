

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
        this.dequeue = this.pop.bind(this);
        this.peek = this.pop.bind(this);
        this.debugDisplay = this.pop.bind(this);
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
        // but does'nt delete it.
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

    public InsertAfterCurrent(data: T): void
    {
        if (this.m_markedNode == null)
        {
            this.items.prepend(data);
            return;
        }

        this.items.addAfter(this.m_markedNode, data);
    }

    public debugDisplay(): string 
    {
        let str: string[] = [];
        let currentList = this.items.head;
        while (currentList !== null)
        {
            str.push(String(currentList.value));
            currentList = currentList.next;
        }

        return str.join(" ");
    }


}



class sillyIterator
{


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


    protected getNextTab(root: HTMLElement): HTMLElement[]
    {
        let currentNode: Node;
        // https://developer.mozilla.org/en-US/docs/Web/API/Document/createNodeIterator
        // https://developer.mozilla.org/en-US/docs/Web/API/Document/createTreeWalker

        // let ni = document.createNodeIterator(el, NodeFilter.SHOW_ELEMENT);
        // let ni = document.createTreeWalker(this.m_tree, NodeFilter.SHOW_ELEMENT);
        let ni = document.createTreeWalker(root, NodeFilter.SHOW_ELEMENT, this.createVisibleListNodesFilter());

        ni.currentNode = root;

        let a: HTMLElement[] = [];

        while (currentNode = ni.nextNode())
        {
            a.push(<HTMLElement>currentNode);
        }

        return a;
    }
}
