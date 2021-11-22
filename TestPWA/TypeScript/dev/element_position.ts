
"use strict";


function WebForm_TrimString(className:string)
{
    if (!className)
        return "";

    return className.replace(/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g, '');
}


function WebForm_AppendToClassName(element:Element, className:string)
{
    let currentClassName = ' ' + WebForm_TrimString(element.className) + ' ';
    className = WebForm_TrimString(className);

    let index = currentClassName.indexOf(' ' + className + ' ');
    if (index === -1)
    {
        element.className = (element.className === '') ? className : element.className + ' ' + className;
    }
}


function WebForm_RemoveClassName(element:Element, className:string)
{
    let currentClassName = ' ' + WebForm_TrimString(element.className) + ' ';
    className = WebForm_TrimString(className);

    let index = currentClassName.indexOf(' ' + className + ' ');
    if (index >= 0)
    {
        element.className = WebForm_TrimString(currentClassName.substring(0, index) + ' ' +
            currentClassName.substring(index + className.length + 1, currentClassName.length));
    }
}


function WebForm_GetElementPosition(element:HTMLElement)
{
    let result = {
        "x": 0,
        "y": 0,
        "width": 0,
        "height": 0
    };
    
    if (element.offsetParent)
    {
        result.x = element.offsetLeft;
        result.y = element.offsetTop;
        let parent: HTMLElement = <HTMLElement> element.offsetParent;
        while (parent)
        {
            result.x += parent.offsetLeft;
            result.y += parent.offsetTop;

            let parentTagName = parent.tagName.toLowerCase();
            if (parentTagName != "table" &&
                parentTagName != "body" &&
                parentTagName != "html" &&
                parentTagName != "div" &&
                parent.clientTop &&
                parent.clientLeft)
            {
                result.x += parent.clientLeft;
                result.y += parent.clientTop;
            }

            parent = <HTMLElement> parent.offsetParent;
        }
    }
    else if ((<any>element).left && (<any>element).top)
    {
        result.x = (<any>element).left;
        result.y = (<any>element).top;
    }
    else
    {
        if ((<any>element).x)
        {
            result.x = (<any>element).x;
        }
        if ((<any>element).y)
        {
            result.y = (<any>element).y;
        }
    }

    if (element.offsetWidth && element.offsetHeight)
    {
        result.width = element.offsetWidth;
        result.height = element.offsetHeight;
    }
    else if (element.style && (<any>element.style).pixelWidth && (<any>element.style).pixelHeight)
    {
        result.width = (<any>element.style).pixelWidth;
        result.height = (<any>element.style).pixelHeight;
    }

    return result;
}
