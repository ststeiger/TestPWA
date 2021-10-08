
// https://www.npmjs.com/package/jsx-transform

var jsx = require('jsx-transform');
var fs = require('fs'); 

var html = '<h1>Hello World</h1>';

var ou = jsx.fromString(html, {
  // factory: 'mercury.h'
	factory: 'React.createElement'
	
});


// npm install jsx-transform --save
// npm install fs --save

// https://codesandbox.io/s/rl74rn6q7q?file=/index.js
// https://transform.tools/html-to-jsx
// https://infoheap.com/online-react-jsx-to-javascript/
console.log(ou);

fs.readFile('D:/username/Documents/Visual Studio 2017/Projects/TestPWA/TestPWA/wwwroot/jsxTrans/table_only.txt', 'utf8', function(err, data) {
    if (err) throw err;
    // console.log(data);
	
	data = `
    <img src="images/SNB-Logo-blau.svg" style="width: 6cm;" />

    <h2 style="font-family: Arial; font-size: 14pt;">Wartungscheckliste MUVE</h2>

    <table cellspacing="0" border="0">
        <colgroup span="2" width="88"></colgroup>
        <colgroup width="50"></colgroup>
        <colgroup width="103"></colgroup>
        <colgroup width="88"></colgroup>
        <colgroup width="55"></colgroup>
        <colgroup width="29"></colgroup>
        <colgroup span="4" width="25"></colgroup>
        <tbody>
            <tr>
                <td style="border-top: 2px solid #000000; border-bottom: 1px solid #000000; border-left: 2px solid #000000" height="19" align="left" bgcolor="#EDEDED"><font color="#000000">Datum:</font></td>
                <td style="border-top: 2px solid #000000; border-bottom: 1px solid #000000" align="left" bgcolor="#EDEDED"><font color="#000000"><br></font></td>
                <td style="border-top: 2px solid #000000; border-bottom: 1px solid #000000" align="left" bgcolor="#EDEDED"><font color="#000000"><br></font></td>
                <td style="border-top: 2px solid #000000; border-bottom: 1px solid #000000; border-right: 2px solid #000000" colspan="8" align="left" bgcolor="#E7E6E6"><font color="#000000">Bargeldgewerk:     BPS 1020</font></td>
            </tr>
        </tbody>
    </table>

`;
	
	var jsxString = jsx.fromString(data, {
  		// factory: 'mercury.h'
		factory: 'React.createElement'
	});
	
	console.log(jsxString);
});
