
export function autoBind(self: any): any
{
    for (const key of Object.getOwnPropertyNames(self.constructor.prototype))
    {
        if (key === 'constructor')
            continue;
        
        // console.log(key);

        // function has a propertyDescriptor as well, with function as value 
        let desc = Object.getOwnPropertyDescriptor(self.constructor.prototype, key);

        if (desc == null)
            continue;

        // We can only redefine configurable properties !
        if (!desc.configurable)
        {
            console.log("AUTOBIND-WARNING: Property \"" + key + "\" not configurable ! (" + self.constructor.name + ")");
            continue;
        }

        let g = desc.get != null;
        let s = desc.set != null;

        if (g || s)
        {
            let newDescriptor:PropertyDescriptor = {};
            newDescriptor.enumerable = desc.enumerable;
            newDescriptor.configurable = desc.configurable

            if (g)
                newDescriptor.get = desc.get.bind(self);

            if (s)
                newDescriptor.set = desc.set.bind(self);

            Object.defineProperty(self, key, newDescriptor);
            continue; // if it's a property, it can't be a function 
        } // End if (g || s) 

        if (typeof (desc.value) === 'function')
        {
            self[key] = desc.value.bind(self);
        }

    } // Next key 

    return self;
} // End Function autoBind



export function autoTrace(self: any): any
{


    function getLoggableFunction_old(func: any, type: any, name: any)
    {
        return function (...args:any[])
        {
            let logText = name + '(';

            for (var i = 0; i < args.length; i++)
            {
                if (i > 0)
                {
                    logText += ', ';
                }
                logText += args[i];
            }
            logText += ');';

            console.log(type + " " + logText);
            return func.apply(self, args);
        };
    }


    function getLoggableFunction(func: any, type: any, name: any)
    {
        return function (...args: any[])
        {
            let logText = name + '(';

            for (var i = 0; i < args.length; i++)
            {
                if (i > 0)
                {
                    logText += ', ';
                }
                logText += args[i];
            }
            logText += ')';

            console.log("Pre " + type + " " + logText + "; ");
            let res = func.apply(self, args);
            console.log("Post " + type + " " + logText + ":", res);
            return res;
        };
    }


    for (const key of Object.getOwnPropertyNames(self.constructor.prototype))
    {
        if (key === 'constructor')
            continue;
        
        // console.log(key);
        // function has a propertyDescriptor as well, with function as value 
        let desc = Object.getOwnPropertyDescriptor(self.constructor.prototype, key);

        if (desc == null)
            continue;

        // We can only redefine configurable properties !
        if (!desc.configurable)
        {
            console.log("AUTOTRACE-WARNING: Property \"" + key + "\" not configurable ! (" + self.constructor.name + ")");
            continue;
        }

        let g = desc.get != null;
        let s = desc.set != null;
                

        if (g || s)
        {
            let newDescriptor: PropertyDescriptor = {};
            newDescriptor.enumerable = desc.enumerable;
            newDescriptor.configurable = desc.configurable

            if (g)
                newDescriptor.get = getLoggableFunction(desc.get.bind(self), "Property", "get_" + key)

            if (s)
                newDescriptor.set = getLoggableFunction(desc.set.bind(self), "Property", "set_" + key)

            Object.defineProperty(self, key, newDescriptor);
            continue; // if it's a property, it can't be a function 
        } // End if (g || s) 
        
        if (typeof (desc.value) === 'function')
        {
            self[key] = getLoggableFunction(desc.value.bind(self), "Function", key);
        }

    } // Next key 

    return self;
} // End Function autoTrace
