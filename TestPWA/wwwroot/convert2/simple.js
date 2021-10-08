

// https://reactjsexample.com/a-html-to-react-parser/
var parse = require('html-react-parser');
// var a = parse('<div>Hello World</div>'); // equivalent to `React.createElement('div', {}, 'text')`

var a = parse('<section id="lol" name="lolbot"><div><h1>Hello World</h1><h2 data-foo="i\'m an attribute">Salut Monde</h2></div><div>nihao</div></section>'); // equivalent to `React.createElement('div', {}, 'text')`
// console.dir(a);
console.log(JSON.stringify(a, null, "  "));
