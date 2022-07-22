
"use strict";

// https://medium.com/@tomsu/devtools-tips-day-10-custom-formatters-58ee46e640f9
// https://docs.google.com/document/d/1FTascZXT9cxfetuPRT2eXPQKXui4nWFivUnS_335T3U/preview#heading=h.xuvxhsd2bp05

// https://github.com/disjukr/vector-devtools
// open chrome devtools settings
// check "Enable custom formatters"
// write and run above example


// header(object, config);
// Returns a single - line summary of the object or null.
// If null is returned, the default format will be used. 
// Config parameter is optional. 
// You can specify “config” attribute in object tag and assign it to an arbitrary object, 
// this object will be passed here as second parameter.

// hasBody(object, config);
// Returns true if the object can be opened to show more detail. 
// Config - same as in header function.

// body(object, config);
// Returns the expanded version of the object, to be displayed after it's opened. 
// Config-same as in header function.

// The input is always the object to inspect. 





class Vec2D
{

    public x: number;
    public y: number;


    constructor(x: number, y: number)
    {
        this.x = x;
        this.y = y;
    }
}


class VectorFormatter
{

    private vectorType: any;


    constructor(vectorType: any)
    {
        this.vectorType = vectorType;
    }


    public header(value: any)
    {
        if (!(value instanceof this.vectorType))
            return null;


        // ReactElement createElement(string / ReactClass type, [object props], [children ...])
        function createJsonML(tagName: string, props: any, ...children: any[]): any[]
        {
            if (children.length == 0)
                return [tagName, props];

            if (Array.isArray(children[0]))
                return [tagName, props, ...children];

            return [tagName, props, children[0]];
        }

        const viewStyle = `
    width: 100px;
    height: 100px;
    border: 1px solid black;
    position: relative;
    overflow: hidden;
    font-size: 10px;
`;
        const circleStyle = `
    position: absolute;
    top: 10px;
    left: 10px;
    width: calc(100% - 22px);
    height: calc(100% - 22px);
    border-radius: 50%;
    border: 1px dashed red;
`;

        function textStyle(plus: boolean, vert: boolean)
        {
            return `
        position: absolute;
        top: ${vert ? plus ? 100 : 0 : 50}%;
        left: ${vert ? 50 : plus ? 100 : 0}%;
        transform: translate(${vert ? -50 : plus ? -100 : 0}%, ${vert ? plus ? -100 : 0 : -50}%);
    `;
        }

        const plusYStyle = textStyle(true, true);
        const plusXStyle = textStyle(true, false);
        const minusYStyle = textStyle(false, true);
        const minusXStyle = textStyle(false, false);

        function vectorStyle(x: number, y: number)
        {
            const len = Math.sqrt(x * x + y * y);
            return `
        position: absolute;
        width: calc(${len * 50}% - 10px);
        top: 50%;
        left: 50%;
        transform: rotate(${Math.atan2(y, x)}rad);
        transform-origin: left;
    `;
        }

        const vectorBarStyle = `
    width: 100%;
    border-bottom: 1px solid red;
`;
        const vectorArrowStyle = `
    position: absolute;
    left: calc(100% - 6px);
    top: -4px;
    border-top: 4px solid transparent;
    border-left: 6px solid red;
    border-bottom: 4px solid transparent;
`;


        //return <div class="vector-view" style={ viewStyle }>
        //    <div class="circle" style={ circleStyle }></div>
        //    <span style={ plusYStyle }>+y</span>
        //    <span style={ plusXStyle }>+x</span>
        //    <span style={ minusYStyle }>-y</span>
        //    <span style={ minusXStyle }>-x</span>
        //    <div class="vector" style={ vectorStyle(value) }>
        //        <div class="vector-bar" style={ vectorBarStyle }></div>
        //        <div class="vector-arrow" style={ vectorArrowStyle }></div>
        //    </div>
        //</div>;

        // via BabelJS - replace React.createElement with createJsonML 
        // https://babeljs.io/repl
        let jsonML = createJsonML("div", {
            class: "vector-view",
            style: viewStyle
        }, createJsonML("div", {
            class: "circle",
            style: circleStyle
        }), createJsonML("span", {
            style: plusYStyle
        }, "+y"), createJsonML("span", {
            style: plusXStyle
        }, "+x"), createJsonML("span", {
            style: minusYStyle
        }, "-y"), createJsonML("span", {
            style: minusXStyle
        }, "-x"), createJsonML("div", {
            class: "vector",
            // style: vectorStyle(value)
            style: vectorStyle((<Vec2D>value).x, (<Vec2D>value).y)
        }, createJsonML("div", {
            class: "vector-bar",
            style: vectorBarStyle
        }), createJsonML("div", {
            class: "vector-arrow",
            style: vectorArrowStyle
        })));

        // console.log(JSON.stringify(jsonML, null, 2));
        return jsonML;
    }

    public hasBody()
    {
        return false;
    }

    public body(): any
    {
        return null;
    }
}


(<any>window).devtoolsFormatters = [new VectorFormatter(Vec2D)];

setInterval(() =>
{
    const t = Date.now() / 1000;
    const len = Math.sin(t * 2);
    console.log(Math.cos(t), Math.sin(t));
    console.log(new Vec2D(Math.cos(t) * len, Math.sin(t) * len));
}, 100);




function myFormatter()
{
    

    (<any>window).devtoolsFormatters = [{
        //  header — handles displaying the main part of the log in the console
        // header: function (obj: any) { return ["div", {}, `${JSON.stringify(obj, null, 7)}`]; }
        header: function (obj: any)
        {
            // if (!(obj instanceof this.vectorType)) return null;
            // console.log(typeof (obj));
            // console.log(obj.constructor.name);

            // return ["div", {}, `hello`];
            //return ["div", { "style": "background-color: red;"}, "hello"];
            // ul, h1...h6 -not allowed
            // Return format is JsonML 
            return ["div", { "style": "background-color: red;" }, ["span", { "style": "font-style: italic;" }, "Hey"]];
        }

        //  hasBody - returns true if you want to display the ▶ arrow that expands the object
        , hasBody: function () { return false; }

        //  body — defines what will be displayed in the expanded section
    }];

}





function setAttributes(tag: string, props: any)
{
    let ele = document.createElement(tag);

    Object.keys(props).forEach(propName =>
    {
        if (propName !== 'children')
        {
            ele.setAttribute(propName, props[propName]);
        }
    });

}
