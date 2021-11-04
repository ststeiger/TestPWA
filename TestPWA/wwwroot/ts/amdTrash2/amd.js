(function (root) {
    var data = {
        strict: true,
        readyModules: {},
        waitingModules: {},
        publicScope: root,
        ignoreNotOptimized: false,
        allowOverride: false,
        verbosity: 1,
        globalDependencies: {},
        namespaces: {},
        amdObject: null
    };
    function normalizeModuleName(name, baseName) {
        var i, part, normalizedBaseParts;
        var baseParts = baseName && baseName.split('/');
        if (name) {
            var splittedName = name.split('/');
            if (splittedName[0].charAt(0) === '.' && baseParts) {
                normalizedBaseParts = baseParts.slice(0, baseParts.length - 1);
                splittedName = normalizedBaseParts.concat(splittedName);
            }
            for (i = 0; i < splittedName.length; i++) {
                part = splittedName[i];
                if (part === '.') {
                    splittedName.splice(i, 1);
                    i -= 1;
                }
                else if (part === '..') {
                    if (i === 0 || (i === 1 && splittedName[2] === '..') || splittedName[i - 1] === '..') {
                        continue;
                    }
                    else if (i > 0) {
                        splittedName.splice(i - 1, 2);
                        i -= 2;
                    }
                }
            }
            name = splittedName.join('/');
        }
        return name;
    }
    function resolveDependency(dependencyPath) {
        if (dependencyPath == 'require') {
            return require;
        }
        else if (dependencyPath == 'exports') {
            return {};
        }
        else if (dependencyPath in data.globalDependencies) {
            var dependencyGlobalName = data.globalDependencies[dependencyPath];
            return (!(dependencyGlobalName in data.publicScope)
                ? null
                : data.publicScope[dependencyGlobalName]);
        }
        else if (dependencyPath in data.readyModules) {
            return data.readyModules[dependencyPath];
        }
        else if (dependencyPath in data.waitingModules) {
            var moduleToBuild = data.waitingModules[dependencyPath];
            var dependencies = resolveDependencies(moduleToBuild.dependencies, dependencyPath);
            var callbackReturn = moduleToBuild.callback.apply(null, dependencies);
            var exportsIndex = moduleToBuild.dependencies.indexOf('exports');
            var buildModule = ((exportsIndex === -1)
                ? callbackReturn
                : dependencies[exportsIndex]);
            data.readyModules[dependencyPath] = buildModule;
            delete data.waitingModules[dependencyPath];
            return buildModule;
        }
        else
            return null;
    }
    function resolveDependencies(dependencyNames, from) {
        return dependencyNames.map(function (dependencyName) {
            var dependencyPath = normalizeModuleName(dependencyName, from);
            var dependencyInstance = resolveDependency(dependencyPath);
            if (dependencyInstance == null) {
                var message = 'amdLite.resolveDependencies // Module ' + dependencyPath + ' not found.';
                if (data.strict)
                    throw new Error(message);
                else if (data.verbosity >= 1)
                    console.warn(message);
            }
            return dependencyInstance;
        });
    }
    function require(dependencyNames, callback, from) {
        from = (from || '');
        (data.verbosity >= 2) && console.info('amdLite.require', dependencyNames, from);
        var dependencies = resolveDependencies(dependencyNames, from);
        callback.apply(null, dependencies);
    }
    function define(name, dependencies, callback) {
        if (typeof name !== 'string') {
            var message = 'amdLite.define // Not optimized AMD module detected.';
            message += '\n@see https://github.com/zouloux/amd-lite#optimization';
            message += '\n@see http://requirejs.org/docs/optimization.html';
            if (!data.ignoreNotOptimized)
                throw new Error(message);
            else if (data.verbosity >= 1)
                console.warn(message);
            return;
        }
        if (name in data.waitingModules || name in data.readyModules) {
            if (data.allowOverride) {
                delete data.readyModules[name];
                delete data.waitingModules[name];
                (data.verbosity >= 1) && console.warn('amdLite.define // Module ' + name + ' overridden');
            }
            else
                throw new Error('amdLite.define // Module ' + name + ' is already defined.');
        }
        data.waitingModules[name] = {
            dependencies: dependencies,
            callback: callback
        };
        (data.verbosity >= 2) && console.info('amdLite.define //', name, dependencies);
    }
    function _injectPublicAPI() {
        data.publicScope['requirejs'] = data.publicScope['require'] = require;
        data.publicScope['requirejs']._defined = data.readyModules;
        data.publicScope['define'] = define;
        if (data.amdObject != null) {
            data.publicScope['define'].amd = data.amdObject;
        }
        for (var i in data.namespaces) {
            data.publicScope[i] = data.publicScope[data.namespaces[i]];
        }
    }
    function init(options) {
        options = (options || {});
        if ('publicScope' in options)
            data.publicScope = options.publicScope;
        if ('verbosity' in options)
            data.verbosity = options.verbosity;
        if ('ignoreNotOptimized' in options)
            data.ignoreNotOptimized = options.ignoreNotOptimized;
        if ('allowOverride' in options)
            data.allowOverride = options.allowOverride;
        if ('globalDependencies' in options)
            data.globalDependencies = options.globalDependencies;
        if ('namespaces' in options)
            data.namespaces = options.namespaces;
        if ('amdObject' in options)
            data.amdObject = options.amdObject;
        _injectPublicAPI();
    }
    var amdLiteConfig = { ignoreNotOptimized: true };
    init(amdLiteConfig);
}(window));
