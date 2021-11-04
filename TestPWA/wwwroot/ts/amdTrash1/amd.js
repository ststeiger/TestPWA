(function (root) {
    var that = {
        strict: false,
        readyModules: {},
        waitingModules: {},
        publicScope: root,
        ignoreNotOptimized: false,
        allowOverride: false,
        verbosity: 1,
        globalDependencies: {},
        namespaces: {},
        amdObject: null,
        init: function (options) {
            options = (options || {});
            if ('publicScope' in options)
                that.publicScope = options.publicScope;
            if ('verbosity' in options)
                that.verbosity = options.verbosity;
            if ('ignoreNotOptimized' in options)
                that.ignoreNotOptimized = options.ignoreNotOptimized;
            if ('allowOverride' in options)
                that.allowOverride = options.allowOverride;
            if ('globalDependencies' in options)
                that.globalDependencies = options.globalDependencies;
            if ('namespaces' in options)
                that.namespaces = options.namespaces;
            if ('amdObject' in options)
                that.amdObject = options.amdObject;
            this._injectPublicAPI();
        },
        _injectPublicAPI: function () {
            that.publicScope['requirejs'] = that.publicScope['require'] = that.require;
            that.publicScope['requirejs']._defined = that.readyModules;
            that.publicScope['define'] = that.define;
            if (that.amdObject != null) {
                that.publicScope['define'].amd = that.amdObject;
            }
            for (var i in that.namespaces) {
                that.publicScope[i] = that.publicScope[that.namespaces[i]];
            }
        },
        require: function (dependencyNames, callback, from) {
            from = (from || '');
            (that.verbosity >= 2) && console.info('amdLite.require', dependencyNames, from);
            var dependencies = that.resolveDependencies(dependencyNames, from);
            callback.apply(null, dependencies);
        },
        define: function (name, dependencies, callback) {
            if (typeof name !== 'string') {
                var message = 'amdLite.define // Not optimized AMD module detected.';
                message += '\n@see https://github.com/zouloux/amd-lite#optimization';
                message += '\n@see http://requirejs.org/docs/optimization.html';
                if (!that.ignoreNotOptimized)
                    throw new Error(message);
                else if (that.verbosity >= 1)
                    console.warn(message);
                return;
            }
            if (name in that.waitingModules || name in that.readyModules) {
                if (that.allowOverride) {
                    delete that.readyModules[name];
                    delete that.waitingModules[name];
                    (that.verbosity >= 1) && console.warn('amdLite.define // Module ' + name + ' overridden');
                }
                else
                    throw new Error('amdLite.define // Module ' + name + ' is already defined.');
            }
            that.waitingModules[name] = {
                dependencies: dependencies,
                callback: callback
            };
            (that.verbosity >= 2) && console.info('amdLite.define //', name, dependencies);
        },
        normalizeModuleName: function (name, baseName) {
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
        },
        resolveDependencies: function (dependencyNames, from) {
            return dependencyNames.map(function (dependencyName) {
                var dependencyPath = that.normalizeModuleName(dependencyName, from);
                var dependencyInstance = that.resolveDependency(dependencyPath);
                if (dependencyInstance == null) {
                    var message = 'amdLite.resolveDependencies // Module ' + dependencyPath + ' not found.';
                    if (that.strict)
                        throw new Error(message);
                    else if (that.verbosity >= 1)
                        console.warn(message);
                }
                return dependencyInstance;
            });
        },
        resolveDependency: function (dependencyPath) {
            if (dependencyPath == 'require') {
                return that.require;
            }
            else if (dependencyPath == 'exports') {
                return {};
            }
            else if (dependencyPath in that.globalDependencies) {
                var dependencyGlobalName = that.globalDependencies[dependencyPath];
                return (!(dependencyGlobalName in that.publicScope)
                    ? null
                    : that.publicScope[dependencyGlobalName]);
            }
            else if (dependencyPath in that.readyModules) {
                return that.readyModules[dependencyPath];
            }
            else if (dependencyPath in that.waitingModules) {
                var moduleToBuild = that.waitingModules[dependencyPath];
                var dependencies = that.resolveDependencies(moduleToBuild.dependencies, dependencyPath);
                var callbackReturn = moduleToBuild.callback.apply(null, dependencies);
                var exportsIndex = moduleToBuild.dependencies.indexOf('exports');
                var buildModule = ((exportsIndex === -1)
                    ? callbackReturn
                    : dependencies[exportsIndex]);
                that.readyModules[dependencyPath] = buildModule;
                delete that.waitingModules[dependencyPath];
                return buildModule;
            }
            else
                return null;
        }
    };
    if (typeof (exports) === 'object' && typeof (exports.nodeName) !== 'string') {
        exports.amdLite = that;
    }
    else {
        root.amdLite = that;
    }
    if (typeof (amdLiteConfig) === 'object') {
        that.init(amdLiteConfig);
    }
})(typeof self !== 'undefined' ? self : this);
