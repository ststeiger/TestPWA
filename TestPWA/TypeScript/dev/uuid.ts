
"use strict";

// https://developer.mozilla.org/en-US/docs/Web/API/Crypto/getRandomValues


// https://stackoverflow.com/questions/34575635/cryptographically-secure-float
export function cryptRandom()
{
    try
    {
        // A buffer with just the right size to convert to Float64
        let buffer = new ArrayBuffer(8);

        // View it as an Int8Array and fill it with 8 random ints
        let ints = new Int8Array(buffer);
        ((window.crypto || window.msCrypto)).getRandomValues(ints);

        // Set the sign (ints[7][7]) to 0 and the
        // exponent (ints[7][6]-[6][5]) to just the right size 
        // (all ones except for the highest bit)
        ints[7] = 63;
        ints[6] |= 0xf0;

        // Now view it as a Float64Array, and read the one float from it
        let float = new DataView(buffer).getFloat64(0, true) - 1;
        return float;
    }
    catch (error)
    { }
    
    return Math.random(); // fallback 
}


// https://stackoverflow.com/questions/105034/how-to-create-a-guid-uuid
export function uuidv4(): string
{
    return "10000000-1000-4000-8000-100000000000".replace(/[018]/g, function (b: string)
    {
        let c = parseInt(b);
        return (c ^ ((window.crypto || window.msCrypto)).getRandomValues(new Uint8Array(1))[0] & 15 >> c / 4).toString(16)
    });
}


// Use of a low-quality source of randomness (such as Math.random)
// Invalid id format (UUIDs must be of the form "xxxxxxxx-xxxx-Mxxx-Nxxx-xxxxxxxxxxxx", 
// where x is one of[0 - 9, a - f] 
// M is one of[1 - 5], 
// and N is[8, 9, a, or b]
export function newId(v?: number): string
{
    function s4(s?: number)
    {
        return Math.floor((1 + cryptRandom()) * 0x10000)
            .toString(16)
            .substring(s || 1);
    }

    // var items = ["8", "9", "a", "b"]
    // var item = items[Math.floor(Math.random() * items.length)];
    // Array.prototype.random = function () { return this[Math.floor((Math.random() * this.length))]; }
    let item = ["8", "9", "a", "b"][Math.floor(cryptRandom() * 4)];
    let uuid = s4() + s4() + '-' + s4() + '-' + (v || 4).toString() + s4(2) + '-' + item + s4(2) + '-' + s4() + s4() + s4();
    return uuid.toUpperCase();
} // End Function newId 


export function newGuid(v?: number): string
{
    let result: string[] = [];
    let item = ["8", "9", "A", "B"][Math.floor(cryptRandom() * 4)];

    for (let i = 0; i < 32; i++)
    {
        if (i == 8 || i == 12 || i == 16 || i == 20)
            result.push("-");

        switch (i)
        {
            case 12:
                result.push((v || 4).toString());
                break;
            case 16:
                result.push(item);
                break;
            default:
                result.push(Math.floor(cryptRandom() * 16).toString(16).toUpperCase());
        }

    }

    return result.join("");
}
