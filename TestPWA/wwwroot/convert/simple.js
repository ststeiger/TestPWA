
const ReactDOMServer = require('react-dom/server');
const HtmlToReactParser = require('html-to-react').Parser;

const htmlInput = '<div><h1>Title</h1><p>A paragraph</p></div>';
const htmlToReactParser = new HtmlToReactParser();
const reactElement = htmlToReactParser.parse(htmlInput);
const reactHtml = ReactDOMServer.renderToStaticMarkup(reactElement);


const assert = {
	
	equal: function(a,b)
	{
		if(a == b)
			console.log("Success"); 
		else
			console.log("Failure"); 
	}
	
};



// assert.equal(reactHtml, htmlInput); // true

// https://reactjs.org/docs/react-without-jsx.html

// https://www.npmjs.com/package/html-to-react
// https://github.com/aknuds1/html-to-react
// console.log(JSON.stringify(reactElement, null, "  "));



const bla = ReactDOMServer.renderToStaticMarkup(JSON.parse(JSON.stringify(reactElement, null, "  ")));
console.log(bla);