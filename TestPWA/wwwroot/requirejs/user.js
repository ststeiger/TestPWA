
define([], function ()
{

    var returnedModule = function ()
    {
        var name = 'Steven';
        this.getName = function ()
        {
            return name;
        }
    };

    return returnedModule;
});
