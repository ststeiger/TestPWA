
function createFilter(fn?: (node: Node) => number): NodeFilter
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

function createVisibleListNodesFilter(): NodeFilter
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

    return createFilter(acceptNode);
}

export function jWalk(container: Node, documentName?: string)
{
    // let ni = document.createTreeWalker(container, NodeFilter.SHOW_ELEMENT, createVisibleListNodesFilter(), false); // TypeScript 4.2
    let ni = document.createTreeWalker(container, NodeFilter.SHOW_ELEMENT, createVisibleListNodesFilter());

    ni.currentNode = container;

    let currentNode: Node;

    while (currentNode = ni.nextNode())
    {
        let el = <Element>currentNode;
        console.log(el);
    }
}
