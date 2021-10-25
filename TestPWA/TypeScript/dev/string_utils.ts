
export function left(str: string, length?: number)
{
    if (!str) return str;
    return str.substr(0, length);
}

export function right(str: string, length?: number)
{
    if (!str) return str;
    return str.substr(-length);
}


export function ltrim(str: string)
{
    if (!str) return str;
    return str.replace(/^[\s\uFEFF\xA0]+/g, '');
}

export function rtrim(str: string)
{
    if (!str) return str;
    return str.replace(/[\s\uFEFF\xA0]+$/g, '');

}

export function trim(str: string)
{
    if (!str) return str;
    return str.replace(/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g, '');
}

export function isNullOrWhiteSpace(str: string)
{
    if (str == null)
        return true;

    return /^[\s\uFEFF\xA0]*$/g.test(str);
}




export function replace(str: string, oldToken: string[] | string, newToken?: string, ignoreCase?: boolean)
{
    if (Array.isArray(oldToken))
    {
        for (let i = 0; i < oldToken.length; ++i)
        {
            str = replace(str, oldToken[i], newToken, ignoreCase);
        }

        return str;
    }

    newToken = newToken || "";
    ignoreCase = ignoreCase || false;

    if (!str || !oldToken)
        return str;

    if ((ignoreCase ? oldToken.toLowerCase() : oldToken) == (ignoreCase ? newToken.toLowerCase() : newToken))
        return str;

    let foundAt = 0;
    let ci = (ignoreCase ? oldToken.toLowerCase() : oldToken)
    while ((foundAt = ((ignoreCase ? str.toLowerCase() : str)).indexOf(ci, foundAt)) != -1)
    {
        str = str.substr(0, foundAt) + newToken + str.substr(foundAt + oldToken.length);
        foundAt += newToken.length;
    }

    return str;
}


export function toUnixNewLines(str: string): string 
{
    if (!str)
        return "";

    return replace(str, "\r\n", "\n", false);
}


export function normalizeNewLines(str: string):string 
{
    if (!str)
        return "";

    return replace(toUnixNewLines(str), "\n", "\r\n", false);
}
