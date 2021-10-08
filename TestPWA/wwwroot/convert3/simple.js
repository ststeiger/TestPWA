
// import { * as jsonx } from 'jsonx';
var jsonx = require('jsonx');


const example_JXM_JSON = {
  component:'p',
  props:{ style:{ color:'blue' } },
  children:'hello world'
};

//Rendering React Components
jsonx.getReactElement(example_JXM_JSON); // => JSX Equivalent: <p style={{color:'blue'}}>hello world</p>
