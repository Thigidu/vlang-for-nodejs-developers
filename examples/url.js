const url = require('url');
const testUrl = url.parse('https://github.com/Thigidu/vlang-for-nodejs-developers#contents')
console.log(`Host: ${testUrl.hostname}`);
console.log(`Path: ${testUrl.pathname}`);
console.log(`Fragment: ${testUrl.hash}`);