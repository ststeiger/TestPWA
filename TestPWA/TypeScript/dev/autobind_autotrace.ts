
// 3 ways to install typescript: 
//   - NuGet package (Install-Package Microsoft.TypeScript.MSBuild -Version 4.4.4) 
//     for TypeScript 3.2 or higher is installed into your project, 
//     the corresponding version of the TypeScript language service gets loaded in the editor.
//   - TypeScript SDK as a standalone SDK download from the VS Marketplace.
//   - NPM npm install -g typescript / npm install -g typescript@next /  npm install typescript@1.7.5
//     to check open cmd and run tsc -v
//     npm uninstall typescript;npm install typescript@3.9.7

// https://docs.microsoft.com/en-us/visualstudio/javascript/javascript-in-vs-2019?view=vs-2019
// https://docs.microsoft.com/en-us/visualstudio/javascript/compile-typescript-code-nuget?view=vs-2019
// <PackageReference Include="Microsoft.TypeScript.MSBuild" Version="3.9.7">
//    <PrivateAssets>all</PrivateAssets>
//    <IncludeAssets>runtime; build; native; contentfiles; analyzers; buildtransitive</IncludeAssets>
// </PackageReference>



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
