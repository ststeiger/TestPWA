
// they do not load anything ...
// https://github.com/zouloux/amd-lite
// https://github.com/zouloux/amd-lite/blob/master/amdLite.js
// https://github.com/requirejs/almond
// https://stackoverflow.com/questions/14339313/what-is-the-smallest-amd-loader-to-date
// https://github.com/briancray/tinyamd
// https://github.com/abadc0de/amdlite


// https://github.com/briancray/tinyamd/blob/master/tinyamd.js
// https://github.com/abadc0de/amdlite/blob/master/amdlite.js
// https://github.com/jivesoftware/tAMD
// https://github.com/MaxMotovilov/eeMD/blob/master/eemd.js


interface IOptions
{
	publicScope?: any;
	verbosity?: any;
	ignoreNotOptimized?: any;
	allowOverride?: any;
	globalDependencies?: any;
	namespaces?: any;
	amdObject?: any;
}

declare let global:any;


(function (root:any)
{
	// Public scope
	let data = {
		strict: true,
		// --------------- LOCAL PROPERTIES ---------------

		// Modules that are already required and initialised.
		readyModules: <{ [key: string]: any }>{},

		// Modules defined but never required yet.
		// Every item contains a callback and dependency list.
		// Required modules are removed from this list and added to the readyModules list.
		waitingModules: <{ [key: string]: any }>{},

		// data.waitingModules[name] = { dependencies: dependencies, callback: callback };


		// --------------- CONFIG PROPERTIES ---------------


		// Public scope where require API is injected and where from global dependencies are retrieved.
		// Can be changed if you work in a Node or specific environment.
		// Default is self or this (window in browsers).
		publicScope: root,

		// Ignore when a not optimized AMD module tries to define itself.
		// Default is strict so an error will be thrown.
		ignoreNotOptimized: false,

		// Allow an AMD module to override another one if it has the same path.
		// Default is strict so an error will be thrown.
		allowOverride: false,

		// Allow console logging. 0 -> Quiet mode, 1 -> (Default) Warning mode, 2 -> Dev mod
		verbosity: 1,

		// Modules names mapped to global dependencies.
		globalDependencies: <{ [key: string]: any }>{},

		// Namespaces are useful to map globally available libraries to another name.
		namespaces: <{ [key: string]: any }>{},

		// AMD Object injected onto define method.
		// This is the define.amd object.
		amdObject: <any>null 
	};


	function normalizeModuleName(name: string, baseName: string)
	{
		let i, part, normalizedBaseParts;
		let baseParts = baseName && baseName.split('/');

		//Adjust any relative paths.
		if (name)
		{
			let splittedName = name.split('/');

			// Starts with a '.' so need the baseName
			if (splittedName[0].charAt(0) === '.' && baseParts)
			{
				//Convert baseName to array, and lop off the last part,
				//so that . matches that 'directory' and not name of the baseName's
				//module. For instance, baseName of 'one/two/three', maps to
				//'one/two/three.js', but we want the directory, 'one/two' for
				//this normalization.
				normalizedBaseParts = baseParts.slice(0, baseParts.length - 1);
				splittedName = normalizedBaseParts.concat(splittedName);
			}

			//start trimDots
			for (i = 0; i < splittedName.length; i++)
			{
				part = splittedName[i];
				if (part === '.')
				{
					splittedName.splice(i, 1);
					i -= 1;
				} else if (part === '..')
				{
					// If at the start, or previous value is still ..,
					// keep them so that when converted to a path it may
					// still work when converted to a path, even though
					// as an ID it is less than ideal. In larger point
					// releases, may be better to just kick out an error.
					if (i === 0 || (i === 1 && splittedName[2] === '..') || splittedName[i - 1] === '..')
					{
						continue;
					} else if (i > 0)
					{
						splittedName.splice(i - 1, 2);
						i -= 2;
					}
				}
			}
			//end trimDots

			name = splittedName.join('/');
		}

		return name;
	}


	function resolveDependency(dependencyPath: string)
	{
		// Special case : require
		if (dependencyPath == 'require')
		{
			return require;
		}

		// Special case : exports statement
		else if (dependencyPath == 'exports')
		{
			return {};
		}

		// Check if module is a global dependency
		else if (dependencyPath in data.globalDependencies)
		{
			// Get global dependency name
			let dependencyGlobalName = data.globalDependencies[dependencyPath];

			return (
				// If this dependency is not in the global scope
				!(dependencyGlobalName in data.publicScope)
					? null

					// Return global module
					: data.publicScope[dependencyGlobalName]
			)
		}

		// Check if module is ready
		else if (dependencyPath in data.readyModules)
		{
			return data.readyModules[dependencyPath];
		}

		// Check if module is not ready but defined and in waiting list
		else if (dependencyPath in data.waitingModules)
		{
			// Get module building info from waiting list
			let moduleToBuild = data.waitingModules[dependencyPath];

			// Resolve waiting module dependencies recursively
			let dependencies = resolveDependencies(
				moduleToBuild.dependencies,
				dependencyPath
			);

			// Call module callback with resolved dependencies
			let callbackReturn = moduleToBuild.callback.apply(null, dependencies);

			// Get index for exports statement
			let exportsIndex = moduleToBuild.dependencies.indexOf('exports');

			// We try to get module public API.
			// It can be inside "exports" parameter or in callback return statement.
			let buildModule = (

				// No export, we return the callback return for maximum compatibility
				// Can be null
				(exportsIndex === -1)
					? callbackReturn

					// Retrieve exports object from its index
					// Module public API is this very object
					// Can't be null but can be empty
					: dependencies[exportsIndex]
			)

			// Register this module as ready
			data.readyModules[dependencyPath] = buildModule;
			delete data.waitingModules[dependencyPath];

			// Return module
			return buildModule;
		}

		// Not found
		else return null;
	}


	function resolveDependencies(dependencyNames: string[], from: string):any
	{
		// Browse dependency names
		return dependencyNames.map(function (dependencyName)
		{
			// Normalize path from root
			let dependencyPath = normalizeModuleName(dependencyName, from);

			// Get dependency instance
			let dependencyInstance = resolveDependency(dependencyPath);

			// If this dependency is not found
			if (dependencyInstance == null)
			{
				let message = 'amdLite.resolveDependencies // Module ' + dependencyPath + ' not found.';
				if (data.strict)
					throw new Error(message);
				else if (data.verbosity >= 1)
					console.warn(message);
			}

			// Return required dependency instance
			return dependencyInstance;
		});
	}



	function require(dependencyNames: string[], callback: Function, from: string)
	{
		// Require dependencies from root if no origin is given
		from = (from || '');

		// Verbose log
		(data.verbosity >= 2) && console.info('amdLite.require', dependencyNames, from);

		// Get dependencies
		let dependencies = resolveDependencies(dependencyNames, from);

		// Call back with dependencies
		callback.apply(null, dependencies);
	}


	function define(name: string, dependencies: string[], callback: Function)
	{
		// First argument needs to be a string
		if (typeof name !== 'string')
		{
			// If not, we are on a not optimized module
			let message = 'amdLite.define // Not optimized AMD module detected.';
			message += '\n@see https://github.com/zouloux/amd-lite#optimization';
			message += '\n@see http://requirejs.org/docs/optimization.html';

			// Show message
			if (!data.ignoreNotOptimized)
				throw new Error(message);
			else if (data.verbosity >= 1)
				console.warn(message);

			// Stop define
			return;
		}

		// Check if a module is already registered with this name/path
		if (name in data.waitingModules || name in data.readyModules)
		{
			// If we allow overrides
			if (data.allowOverride)
			{
				// Delete everything we got about the previous registered module
				delete data.readyModules[name];
				delete data.waitingModules[name];

				// Log warning about prevented override
				(data.verbosity >= 1) && console.warn('amdLite.define // Module ' + name + ' overridden');
			}

			// Throw error about prevented override
			else throw new Error('amdLite.define // Module ' + name + ' is already defined.');
		}

		// Add module to waiting modules list
		data.waitingModules[name] = {
			dependencies: dependencies,
			callback: callback
		};

		// Verbose log
		(data.verbosity >= 2) && console.info('amdLite.define //', name, dependencies);
	}



	function _injectPublicAPI()
	{
		// Set requirejs and require methods
		data.publicScope['requirejs'] = data.publicScope['require'] = require;

		// Expose ready defined modules onto requirejs for maximum compatibility
		data.publicScope['requirejs']._defined = data.readyModules;

		// Expose define method
		data.publicScope['define'] = define;

		// Expose AMD object
		if (data.amdObject != null)
		{
			data.publicScope['define'].amd = data.amdObject;
		}

		// Expose namespaces to global scope
		for (let i in data.namespaces)
		{
			data.publicScope[i] = data.publicScope[data.namespaces[i]];
		}
	}


	function init(options: IOptions)
	{
		// Default options bag
		options = (options || {});

		// Override default options.
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

		// Inject amd lite API into public scope.
		_injectPublicAPI()
	}


	let amdLiteConfig = { ignoreNotOptimized: true};
	init(amdLiteConfig);

}(window));
