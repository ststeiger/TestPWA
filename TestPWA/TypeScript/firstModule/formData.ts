
"use strict";


// https://developer.mozilla.org/en-US/docs/Web/API/FormData/Using_FormData_Objects
// https://arunrajeevan.medium.com/fetch-api-and-formdata-in-html-world-6b0322273260
// https://developer.mozilla.org/en-US/docs/Web/API/Response/redirected


// https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch

// https://mdn.github.io/dom-examples/
// https://mdn.github.io/dom-examples/streams/
// https://mdn.github.io/dom-examples/streams/strings-transform-stream/
// https://mdn.github.io/dom-examples/streams/strings-transform-stream/Uint8ArrayToStringsTransformer.js
// https://mdn.github.io/dom-examples/scrolltooptions/



// https://en.wikipedia.org/wiki/Open_Data_Protocol
// GET: Get the resource(a collection of entities, a single entity, a structural property, a navigation property, a stream, etc.).
// POST: Create a new resource.
// PUT: Update an existing resource by replacing it with a complete instance.
// PATCH: Update an existing resource by replacing part of its properties with a partial instance.
// DELETE: Remove the resource.
// - TRACE, OPTIONS, CONNECT

// https://code-maze.com/different-ways-consume-restful-api-csharp/
// https://www.c-sharpcorner.com/UploadFile/4b0136/restful-api-in-Asp-Net-introduction-of-rest-web-api/
// https://stackoverflow.com/questions/14202257/design-restful-query-api-with-a-long-list-of-query-parameters
// https://datatracker.ietf.org/doc/html/rfc2119




// https://stackoverflow.com/questions/14202257/design-restful-query-api-with-a-long-list-of-query-parameters
// In a nutshell: Make a POST but override HTTP method using X - HTTP - Method - Override header.
// So it is possible to semantically transform a POST request into a GET request.



// https://www.tabnine.com/code/javascript/functions/builtins/XMLHttpRequest/setRequestHeader
// https://www.geeksforgeeks.org/how-to-make-put-request-using-xmlhttprequest-by-making-custom-http-library/
// https://stackoverflow.com/questions/19840509/sending-put-delete-data-with-a-xmlhttprequest



// http://localhost/VIR_DIR/API/Tables/{schema_name}/{table_name}
// http://localhost/VIR_DIR/API/Views/{schema_name}/{view_name}
// http://localhost/VIR_DIR/API/TVF/{schema_name}/{function_name}
// http://localhost/VIR_DIR/API/SF/{schema_name}/{function_name}
// http://localhost/VIR_DIR/API/Procedures/{schema_name}/{procedure_name}
// http://localhost/VIR_DIR/API/Resources/{schema_name}/{procedure_name}
// http://localhost/VIR_DIR/API/Basic_SQL/{schema_name}/{procedure_name}
// http://localhost/VIR_DIR/API/Documents/{DK_UID}/{dateiname}
// http://localhost/VIR_DIR/API/SVG/{SVG_UID}/{dateiname}
// http://localhost/VIR_DIR/API/Images/{DK_UID}/{dateiname}
// http://localhost/VIR_DIR/API/CSS/{DK_UID}/{dateiname}
// http://localhost/VIR_DIR/API/Scripts/{state}/{dateiname}
// http://localhost/VIR_DIR/API/Modules/{module_type}/{file_name}

// http://localhost/VIR_DIR/API/{ds}/Tables/{schema_name}/{table_name}



// fields
// for tables 
// for views
// for table - valued functions
// for scalar - functions




// Example POST method implementation:
async function postData(url = '', data = {})
{
    // Default options are marked with *
    const response = await fetch(url, {
        method: 'POST', // *GET, POST, PUT, DELETE, etc.
        mode: 'cors', // no-cors, *cors, same-origin
        cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
        credentials: 'same-origin', // include, *same-origin, omit
        headers: {
            'Content-Type': 'application/json'
            // 'Content-Type': 'application/x-www-form-urlencoded',
            , "X-HTTP-Method-Override": "GET"
        },
        redirect: 'follow', // manual, *follow, error
        referrerPolicy: 'no-referrer', // no-referrer, *no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
        body: JSON.stringify(data) // body data type must match "Content-Type" header
    });

    return response.json(); // parses JSON response into native JavaScript objects
}


function sendCustomFormData()
{
    let formData = new FormData();

    let fileInputElement: HTMLInputElement = <HTMLInputElement>document.getElementById("inp1");;

    formData.append("username", "Groucho");
    formData.append("accountnum", "123456"); // number 123456 is immediately converted to a string "123456"

    // HTML file input, chosen by user
    formData.append("userfile", fileInputElement.files[0]);

    // JavaScript file-like object
    let content: string = '<a id="a"><b id="b">hey!</b></a>'; // the body of the new file...
    let blob: Blob = new Blob([content], { type: "text/xml" });

    formData.append("webmasterfile", blob);

    let request = new XMLHttpRequest();
    request.open("POST", "http://foo.com/submitform.php");
    request.send(formData);
}






// To construct a FormData object that contains the data from an existing <form>, specify that form element when creating the FormData object:
// Note: FormData will only use input fields that use the name attribute.
function sendExistingFormData()
{
    let formElement: HTMLFormElement = document.querySelector("existingFormId");
    let request2 = new XMLHttpRequest();
    request2.open("POST", "submitform.php");
    request2.send(new FormData(formElement));
}






function sendCustomizedExistingFormData()
{
    let serialNumber = 123;
    let formElement2: HTMLFormElement = document.querySelector("form");
    let formData2 = new FormData(formElement2);
    let request3 = new XMLHttpRequest();
    request3.open("POST", "submitform.php");
    formData2.append("serialnumber", serialNumber.toString());
    request3.send(formData2);
}

// By default, fetch() won't send or receive any cookies from the server, 
// resulting in unauthenticated requests if the site relies on maintaining a user session 
// (to send cookies, the credentials init option must be set).
async function getSomething()
{
    // Simple GET Request

    // The Promise returned from fetch() won’t reject on HTTP error status 
    // even if the response is an HTTP 404 or 500.  
    // Instead, it will resolve normally(with ok status set to false), 
    // and it will only reject on network failure or if anything prevented the request from completing.

    let resp: Response = await fetch('http://example.com/movies.json');

    // let heads:Headers = resp.headers;
    // let txt:string= await resp.text();
    // let json:any = await resp.json();
    // let myBlob:Blob = await resp.blob();
    // let fd: FormData = await resp.formData()
    // let ab: ArrayBuffer = await resp.arrayBuffer();
    
    let type: ResponseType = resp.type;

    // The ok read-only property of the Response interface contains a Boolean 
    // stating whether the response was successful(status in the range 200 - 299) or not.
    if (!resp.ok)
    {
        console.error("Status (no)", resp.status);
        console.error("Status", resp.statusText);
        throw new Error("HTTP error, status = " + resp.status);
    }    
    
    if (resp.redirected)
    {
        console.log("Response from:", resp.url);
    }

    if (resp.bodyUsed)
    {
        console.log("body", resp.body);
    }


    let json = await resp.json(); //Note: response.json()returns a Promise.
    console.log(JSON.stringify(json));
}



async function postSomething()
{
    function postData(url:string = "", data:any = {})
    {
        url = url || "";
        data = data || {};

        return fetch(url, {
            method: "POST",
            mode: "cors",
            cache: "no-cache",
            credentials: "same-origin",
            headers: {
                "Content-Type": "application/json"
            },
            redirect: "follow",
            referrer: "no-referrer",
            body: JSON.stringify(data)
        })
            .then(response => response.json()); // parses response to JSON
    }

    //POST Request with body and options
    postData(`http://example.com/answer`, { answer: 42 })
        .then(data => console.log(JSON.stringify(data)))
        .catch(error => console.error(error));

    
}



async function uploadJSON()
{
    let url = 'https://example.com/profile';
    let data = { username: 'example' };

    try
    {
        let res = await fetch(url, {
            method: 'POST', // or 'PUT'
            body: JSON.stringify(data), // data can be `string` or {object}!
            headers: { 'Content-Type': 'application/json' }
        });

        let responseData = await res.json();
        let responseString = JSON.stringify(responseData);
    }
    catch (err)
    {
        console.error('Error:', err)
    }

}




async function foo()
{
    let formData = new FormData();
    let fileField:HTMLInputElement = document.querySelector("input[type='file']");

    formData.append('username', 'abc123');
    formData.append('avatar', fileField.files[0]);

    try
    {
        let response = await fetch('https://example.com/profile/avatar', { method: 'PUT', body: formData }); 

        let dod = await response.json(); 
        let str = JSON.stringify(dod); 
    }
    catch (err)
    {
        console.error('Error:', err);
    }
    
}



async function disallowingRedirects()
{
    let resp = await fetch("awesome-picture.jpg", { redirect: "error" });

    let imageBlob = await resp.blob();
    let imgObjectURL = URL.createObjectURL(imageBlob);
    let img: HTMLImageElement = <HTMLImageElement>document.getElementById("img-element-id");
    img.src = imgObjectURL;

    let p = document.body.firstChild;
    document.body.insertBefore(p, img);
}





// https://mdn.github.io/dom-examples/streams/simple-pump/
async function bodyExample()
{
    try
    {
        let resp = await fetch('./tortoise.png');
        let reader = resp.body.getReader();

        // not on IE and Safari < v10
        // https://caniuse.com/?search=ReadableStream
        let rs = new ReadableStream({
            async start(controller)
            {
                while (true)
                {
                    // const { done, value } = await reader.read();
                    let result: ReadableStreamDefaultReadResult<Uint8Array> = await reader.read();

                    // When no more data needs to be consumed, break the reading
                    // if (done)
                    if(result.done)
                    {
                        break;
                    }

                    // Enqueue the next data chunk into our target stream
                    // controller.enqueue(value);
                    controller.enqueue(result.value);
                }

                // Close the stream
                controller.close();
                reader.releaseLock();
            }
        });

        // Create a new response out of the stream
        let r: Response = new Response(rs);
        let blob: Blob = await r.blob();
        let url: string = URL.createObjectURL(blob);

        const img: HTMLImageElement = <HTMLImageElement>document.getElementById("target");
        img.src = url; // Update image
    }
    catch (err)
    {
        console.error(err);
    }

}



/**
 * This transformer takes binary Uint8Array chunks from a `fetch`
 * and translates them to chunks of strings.
 *
 * @implements {TransformStreamTransformer}
 */
class Uint8ArrayToStringsTransformer
{
    private decoder: TextDecoder;
    private lastString: string;


    constructor()
    {
        this.decoder = new TextDecoder()
        this.lastString = ''
    }

    /**
     * Receives the next Uint8Array chunk from `fetch` and transforms it.
     *
     * @param {Uint8Array} chunk The next binary data chunk.
     * @param {TransformStreamDefaultController} controller The controller to enqueue the transformed chunks to.
     */
    public transform(chunk: Uint8Array, controller: TransformStreamDefaultController)
    {
        console.log('Received chunk %o with %d bytes.', chunk, chunk.byteLength)

        // Decode the current chunk to string and prepend the last string
        const string = `${this.lastString}${this.decoder.decode(chunk)}`

        // Extract lines from chunk
        const lines = string.split(/\r\n|[\r\n]/g)

        // Save last line, as it might be incomplete
        this.lastString = lines.pop() || ''

        // Enqueue each line in the next chunk
        for (const line of lines)
        {
            controller.enqueue(line)
        }
    }

    /**
     * Is called when `fetch` has finished writing to this transform stream.
     *
     * @param {TransformStreamDefaultController} controller The controller to enqueue the transformed chunks to.
     */
    public flush(controller: TransformStreamDefaultController)
    {
        // Is there still a line left? Enqueue it
        if (this.lastString)
        {
            controller.enqueue(this.lastString)
        }
    }
}

async function stringTransformExample()
{
    try
    {
        // Create a transform stream with our transformer
        const ts = new TransformStream(new Uint8ArrayToStringsTransformer())
        // Fetch the text file
        const response = await fetch('goethe-faust-1.txt')
        // Get a ReadableStream on the text file's body
        const rs = response.body
        // Apply our Transformer on the ReadableStream to create a stream of strings
        const lineStream = rs.pipeThrough(ts)
        // Read the stream of strings
        const reader = lineStream.getReader()
        while (true)
        {
            const { done, value } = await reader.read()
            if (done)
            {
                break
            }

            // Write each string line to the document as a paragraph
            const p = document.createElement('p')
            p.textContent = value
            document.getElementById('section').appendChild(p)
        }
    }
    catch (err)
    {
        if (typeof TransformStream === 'undefined')
        {
            const error = document.createElement('p')
            error.textContent = 'TransformStream is not available in your browser. Activate it in Chrome with chrome://flags/#enable-experimental-web-platform-features'
            error.style.color = 'red'
            document.getElementById('section').appendChild(error)
        }
    }
}
