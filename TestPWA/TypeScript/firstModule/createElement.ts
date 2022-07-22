
"use strict";

// use JSX with el instead of React.createElement
/** @jsx createElement */

/*
const Children = {
    only(children)
    {
        if (children.length > 1 || children.length === 0)
        {
            throw new Error('The children must have only one element');
        }
        return children[0];
    }
}

// check if it's an event if it starts with a `on` and followed with a capitalized character (eg. onClick)
// isEvent("onclick") ==> false
// isEvent("onClick") ==> true
function isEvent(attr:string)
{
    return (attr.startsWith('on') && attr[2].toLowerCase() !== attr[2])
}

// get the name of the event without the `on` (eg. click instead of onClick)
function getEventName(attr:string)
{
    return attr.split('').splice(2).join('').toLowerCase();
}

/*
 // https://gist.githubusercontent.com/sergiodxa/a493c98b7884128081bb9a281952ef33/raw/5aa7cfd68360a8af7926a45b03c8a99dacdf23ed/native-create-element.js
// our element factory
function createElement(type:string, _props:any, ..._children)
{
    // define a default value for props
    const props = _props || {};
    // if _children is an array of array take the first value, else take the full array
    const children = Array.isArray(_children[0]) ? _children[0] : _children;

    // if type is a function run it passing the props and children
    if (typeof type === 'function')
    {
        // merge props and children
        const componentProps = { ...props, children: (props.children || []).concat(children) };
        // if it's a classy component
        
        if (type.isClass)
        {
            // instance it
            const component = new type(componentProps);
            // render it
            const element = component.render(componentProps);
            return element;
        }
        

        // render the function
        const element = type(componentProps);
        return element;
    }
    
    // create a new DOM element
    const element = document.createElement(type);

    // set each attribute (prop), if it's children append it, if it's a event handler start listening

    for (let name in props)
    {
        if (props.hasOwnProperty(name))
        {
            let value = props[name];
            element.setAttribute(name, props[name]);
        }
    }


    Object.entries(props).forEach(([name, value]) =>
    {
        if (name === 'children')
        {
            return value
                .map(child => typeof child === 'string' ? document.createTextNode(child) : child)
                .forEach(child => element.appendChild(child));
        }
        if (!isEvent(name))
        {
            return element.setAttribute(name, value);
        }
        const eventName = getEventName(name);
        element.addEventListener(eventName, value);
    })

    // append children
    children
        .map(child => typeof child === 'string' ? document.createTextNode(child) : child)
        .forEach(child => element.appendChild(child));

    return element;
}
*/

/*
// class used to create components with an internal state
class Component
{
    private state: any;


    constructor(props:any)
    {
        this.state = this.getInitialState(props);
    }

    public getInitialState(props:any)
    {
        return {};
    }

    // update the state and call onUpdate
    public setState(handler:any)
    {
        if (typeof handler !== 'function')
        {
            this.state = { ...this.state, ...handler };
            if (!this.onUpdate) return this.state;
            return this.onUpdate(this.state);
        }
        this.state = handler(this.state)
        if (!this.onUpdate) return this.state;
        return this.onUpdate(this.state);
    }

    public render()
    {
        throw new ReferenceError('You must define your own render function.');
    }
}


Component.isClass = true;

// render our DOM tree in a target element (default to the the body)
function render(element:Element, target = document.body)
{
    // clear old HTML
    target.innerHTML = '';
    // add the new HTML
    target.appendChild(element);
    // return the target
    return target;
}

// basic pure component
function TitleContent({ name = '' } = {})
{
    return <span>hola { name } </span>
}

// custom classy component
class Title extends Component
{
    constructor(props)
    {
        super(props);
        this.updateName = this.updateName.bind(this);
    }

    getInitialState({ name = '' } = {})
    {
        return { name };
    }

    onUpdate(state)
    {
        render(
            <TitleContent name={ state.name } />,
            this.el
        );
    }

    updateName()
    {
        this.setState(state => ({ oldName: state.name, name: state.oldName || 'mundo' }))
    }

    render(props)
    {
        this.el = (
            <h1 onClick= { this.updateName } >
            <TitleContent name={ this.state.name } />
                < /h1>
    );

        return this.el;
    }
}

// pure app wrapper component
function App()
{
    return (
        <div id= "hola" >
        <Title />
        < Title name = "world" />
            <Title />
            < Title />
            <Title />
            < /div>
  );
}

// render our app
render(<App />);
*/
