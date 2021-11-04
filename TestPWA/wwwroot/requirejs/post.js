
define(['user'], function (u)
{
    // load in user module
    var user = new u();

    var returnedModule = function ()
    {
        var name = user.getName();

        this.makePost = function (message)
        {
            console.log(name + message + " posted at " + new Date());
        }
    };

    return returnedModule;
});
