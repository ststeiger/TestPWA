
export function documentReady(listener: EventListenerOrEventListenerObject, options?: boolean | AddEventListenerOptions)
{
    if (listener == null)
        throw new Error("argument 'listener' is NULL.");

    if (window.document.addEventListener) window.document.addEventListener("DOMContentLoaded", listener, options || false);
    else if (window.document.attachEvent) window.document.attachEvent("onreadystatechange", listener);
    else window.onload = <(this: Window, ev: WindowEventMap["load"])=>any>listener;
}


export function onLoad(listener: (this: Window, ev: WindowEventMap["load"]) => any, options ?: boolean | AddEventListenerOptions)
{
    if (listener == null)
        throw new Error("argument 'listener' is NULL.");

    if (window.addEventListener) window.addEventListener("load", listener, options || false);
    else if (window.attachEvent) window.attachEvent("onload", listener);
    else window.onload = listener;
}
