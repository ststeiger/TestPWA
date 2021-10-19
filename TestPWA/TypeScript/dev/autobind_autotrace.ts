
export function autoBind(self: any): any
{
    for (const key of Object.getOwnPropertyNames(self.constructor.prototype))
    {

        if (key !== 'constructor')
        {
            // console.log(key);

            let desc = Object.getOwnPropertyDescriptor(self.constructor.prototype, key);
            self.defineProperty

            if (desc != null)
            {
                let g = desc.get != null;
                let s = desc.set != null;

                if (g || s)
                {
                    let newGetter = null;
                    let newSetter = null;

                    if (g)
                        //desc.get = desc.get.bind(self);
                        newGetter = desc.get.bind(self);

                    if (s)
                        // desc.set = desc.set.bind(self);
                        newSetter = desc.set.bind(self);
                    
                    if (newGetter != null && newSetter == null)
                    {
                        Object.defineProperty(self, key, {
                            get: newGetter
                        });
                    }
                    else if (newSetter != null && newGetter == null)
                    {
                        Object.defineProperty(self, key, {
                            set: newSetter
                        });
                    }
                    else // at least one is set, but none of the above cases, so two are set 
                    {
                        Object.defineProperty(self, key, {
                            get: newGetter, set: newSetter
                        });
                    }

                    // Object.defineProperty(self.constructor.prototype, key, desc);
                    // Object.defineProperty(self.constructor.prototype, key, desc);
                    continue; // if it's a property, it can't be a function 
                } // End if (g || s) 

            } // End if (desc != null) 

            if (typeof (self[key]) === 'function')
            {
                let val = self[key];
                self[key] = val.bind(self);
            }

        } // End if (key !== 'constructor' && typeof val === 'function') 

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

        if (key !== 'constructor')
        {
            // console.log(key);
            let desc = Object.getOwnPropertyDescriptor(self.constructor.prototype, key);

            if (desc != null)
            {
                let g = desc.get != null;
                let s = desc.set != null;

                if (g || s)
                {
                    let newGetter = null;
                    let newSetter = null;

                    if (g)
                        //desc.get = getLoggableFunction(desc.get.bind(self), "Property", "get_" + key)
                        newGetter = getLoggableFunction(desc.get.bind(self), "Property", "get_" + key)

                    if (s)
                        // desc.set = getLoggableFunction(desc.set.bind(self), "Property", "set_" + key)
                        newSetter = getLoggableFunction(desc.set.bind(self), "Property", "set_" + key)

                    if (newGetter != null && newSetter == null)
                    {
                        Object.defineProperty(self, key, {
                            get: newGetter
                        });
                    }
                    else if (newSetter != null && newGetter == null)
                    {
                        Object.defineProperty(self, key, {
                            set: newSetter
                        });
                    }
                    else // at least one is set, but none of the above cases, so two are set 
                    {
                        Object.defineProperty(self, key, {
                            get: newGetter, set: newSetter
                        });
                    }

                    continue; // if it's a property, it can't be a function 
                } // End if (g || s) 

            } // End if (desc != null) 

            // if it's not a property, it can only be a function or not a function 
            if (typeof (self[key]) === 'function')
            {
                let val = self[key];
                self[key] = getLoggableFunction(val.bind(self), "Function", key);
            } // End if (typeof (self[key]) === 'function') 

        } // End if (key !== 'constructor' && typeof val === 'function') 

    } // Next key 

    return self;
} // End Function autoTrace
