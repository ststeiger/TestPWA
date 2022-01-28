
import * as utils from "./string_utils.js";


export function getTranslateData()
{
    // td:not([colspan])
    let eles = document.querySelectorAll('tr td[colspan="6"]');
    let arr = [];

    for (let i = 0; i < eles.length; ++i)
    {
        arr.push(utils.trim(eles[i].textContent));
    }

    return arr;
}
