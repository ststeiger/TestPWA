
// https://github.com/briancray/tinyamd/blob/master/tinyamd.js
// https://github.com/briancray/tinyamd/tree/master/tests


interface HTMLScriptElement
{
    onreadystatechange: any;
}

//interface AssociativeArray<T>
//{
//    [key: string]: T;
//}



//  { [key: string]: any }

// Usage: https://localhost:44314/amd_index.htm

// Using the original: https://localhost:44314/requirejs.htm
// https://github.com/requirejs/requirejs
// https://coderwall.com/p/u8xgvq/requirejs-basic-introduction

// https://www.reddit.com/r/javascript/comments/46sbd2/is_amd_requirejs_dying/



; (function (global)
{
    "use strict";

    let doc = document;
    let el_head = doc.head || doc.getElementsByTagName("head")[0] || doc.documentElement;
    let node = (function (scripts)
    {
        return scripts[scripts.length - 1];
    })(doc.getElementsByTagName('script'));
    let main = node.getAttribute('data-main');
    let anonymous_queue:any[] = [];
    let settings = <{ [key: string]: any }> {
        baseUrl: (function (href)
        {
            let place = href.split('/').slice(0, 3).join('/');
            let path;
            if (main)
            {
                if (main.slice(0, place.length) === place)
                {
                    path = main;
                }
                else if (main[0] === '/')
                {
                    path = place + main;
                }
                else
                {
                    path = href.slice(0, href.lastIndexOf('/') + 1) + main;
                }
                main = main.slice(main.lastIndexOf('/') + 1);
            }
            else
            {
                path = href;
            }
            return path.slice(0, path.lastIndexOf('/') + 1);
        })(global.location.href.split('?')[0])
    };
    let exports = <{ [key: string]: any }>{};

    function config(config:any)
    {
        if (typeof config === 'object')
        {
            for (let x in config)
            {
                config.hasOwnProperty(x) && (settings[x] = config[x]);
            }
        }
    };

    function define(id:string, dependencies:string[], factory:Function)
    {
        let arg_count = arguments.length;

        if (arg_count === 1)
        {
            factory = <Function><any>id;
            dependencies = ['require', 'exports', 'module'];
            id = null;
        }
        else if (arg_count === 2)
        {
            if (settings.toString.call(id) === '[object Array]')
            {
                factory = <Function><any>dependencies;
                dependencies = <string[]><any>id;
                id = null;
            }
            else
            {
                factory = <Function><any>dependencies;
                dependencies = ['require', 'exports', 'module'];
            }
        }

        if (!id)
        {
            anonymous_queue.push([dependencies, factory]);
            return;
        }

        function ready()
        {
            let handlers, context, module;
            if (exports[id])
            {
                handlers = exports[id].handlers;
                context = exports[id].context;
            }
            module = exports[id] = typeof factory === 'function' ? factory.apply(null, anonymous_queue.slice.call(arguments, 0)) || exports[id] || {} : factory;
            module.tinyamd = 2;
            module.context = context;
            for (let x = 0, xl = handlers ? handlers.length : 0; x < xl; x++)
            {
                handlers[x](module);
            }
        };

        require(dependencies, ready, id);
    };

    define.amd = {};

    // require: function (dependencyNames, callback: Function, from: string)
    function require(modules: string[], callback: Function, context:string)
    {
        let loaded_modules:any[] = [], loaded_count = 0, has_loaded = false;

        if (typeof modules === 'string')
        {
            if (exports[modules] && exports[modules].tinyamd === 2)
            {
                return exports[modules];
            }
            throw new Error(modules + ' has not been defined. Please include it as a dependency in ' + context + '\'s define()');
            return;
        }
        let xl = modules.length;
        for (let x = 0; x < xl; x++)
        {
            switch (modules[x])
            {
                case 'require':
                    let _require = function (new_module:string[], callback:Function)
                    {
                        return require(new_module, callback, context);
                    };
                    (<any>_require).toUrl = function (module:string)
                    {
                        return toUrl(module, context);
                    };
                    loaded_modules[x] = _require;
                    loaded_count++;
                    break;
                case 'exports':
                    loaded_modules[x] = exports[context] || (exports[context] = {});
                    loaded_count++;
                    break;
                case 'module':
                    loaded_modules[x] = {
                        id: context,
                        uri: toUrl(context, null) // todo: fixme context ?
                    };
                    loaded_count++;
                    break;
                case exports[context] ? exports[context].context : '':
                    loaded_modules[x] = exports[exports[context].context];
                    loaded_count++;
                    break;
                default:
                    (function (x)
                    {
                        load(modules[x], function (def:any)
                        {
                            loaded_modules[x] = def;
                            loaded_count++;
                            loaded_count === xl && callback && (has_loaded = true, callback.apply(null, loaded_modules));
                        }, context);
                    })(x);
            };
        }
        !has_loaded && loaded_count === xl && callback && callback.apply(null, loaded_modules);
    }

    function load(module:string, callback:Function, context:string)
    {
        module = context ? toUrl(module, context) : module;

        if (exports[module])
        {
            if (exports[module].tinyamd === 1)
            {
                callback && exports[module].handlers.push(callback);
            }
            else
            {
                callback && callback(exports[module]);
            }
            return;
        }
        else
        {
            exports[module] = {
                tinyamd: 1,
                handlers: [callback],
                context: context
            };
        }

        // FIXME ? context ?
        inject(toUrl(module, null) + '.js', function ()
        {
            let queue_item;
            if (queue_item = anonymous_queue.shift())
            {
                queue_item.unshift(module);
                exports[module].tinyamd === 1 && define.apply(null, queue_item);
            }
        });
    };

    let toUrl = require.toUrl = function (id:string, context:string):string
    {
        let new_context, i, changed;
        switch (id)
        {
            case 'require':
            case 'exports':
            case 'module':
                return id;
        }
        new_context = (context || settings.baseUrl).split('/');
        new_context.pop();
        let idParts = id.split('/');
        i = idParts.length;
        while (--i)
        {
            switch (idParts[0])
            {
                case '..':
                    new_context.pop();
                case '.':
                case '':
                    idParts.shift();
                    changed = true;
            }
        }
        return (new_context.length && changed ? new_context.join('/') + '/' : '') + idParts.join('/');
    };

    function inject(file:string, callback:Function)
    {
        let script = doc.createElement('script');
        script.onload = script.onreadystatechange = function ()
        {
            if (!this.readyState || this.readyState === 'loaded' || this.readyState === 'complete')
            {
                script.onload = script.onreadystatechange = null;
                el_head.removeChild(script);
                callback && callback();
            }
        };
        script.type = 'text/javascript';
        script.async = true;
        script.src = file;
        el_head.appendChild(script);
    };

    (<any>global).tinyamd = {
        config: config,
        inject: inject,
        define: (<any>global).define = define,
        require: (<any>global).require = require,
        exports: exports
    };

    main && require([main], null, null);
})(this);
