
"use strict";

// declare global
// {

interface Window
{
    // require: (fileName: string) => any;
    require<T>(fileName: string): T;
    exports: any;
}

// }


export function foo()
{
    return 123;
}



export function bar()
{
    return 123;
}


// https://newbedev.com/javascript-dom-how-to-remove-all-events-of-a-dom-object
// https://alligator.io/js/object-property-shorthand-es6/
// https://itnext.io/enhanced-object-literal-value-shorthand-javascript-es6-feature-series-pt-6-e00dfdc24f64
// https://www.sitepoint.com/shorthand-javascript-techniques/


interface IEventHandlerData
{
    node: Node;
    handler: EventListenerOrEventListenerObject;
    capture: boolean;
}


let _eventHandlers: { [key: string]: IEventHandlerData[] }= {}; // somewhere global


function addListener(node:Node, event:string, handler:EventListenerOrEventListenerObject, capture:boolean = false)
{
    if (!(event in _eventHandlers))
    {
        _eventHandlers[event] = [];
    }

    // here we track the events and their nodes (note that we cannot
    // use node as Object keys, as they'd get coerced into a string
    _eventHandlers[event].push({ "node": node, "handler": handler, "capture": capture });
    node.addEventListener(event, handler, capture);
}


function removeAllListeners(targetNode:Node, event:string)
{
    // remove listeners from the matching nodes
    _eventHandlers[event].filter(function (value: IEventHandlerData, index: number, array: IEventHandlerData[])
    {
        return value.node === targetNode;
    }).forEach(
        function (value: IEventHandlerData, index: number, array: IEventHandlerData[])
        {
            value.node.removeEventListener(event, value.handler, value.capture);
        }
    );

    _eventHandlers[event] = _eventHandlers[event].filter(
        function (value: IEventHandlerData, index: number, array: IEventHandlerData[])
        {
            return value.node !== targetNode;
        }
    );
    
    // Funny syntax
    /*
    _eventHandlers[event]
        .filter(({ node }) => node === targetNode)
        .forEach(({ node, handler, capture }) => node.removeEventListener(event, handler, capture))
        ;

    // update _eventHandlers global
    _eventHandlers[event] = _eventHandlers[event].filter( ({ node }) => node !== targetNode,)
    */
}


// And then you could use it with:
// addListener(div, 'click', eventReturner(), false); 
// and later
// removeAllListeners(div, 'click');
