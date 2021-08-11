var fs = require('fs');
fs.readFile('version.txt', (_, data) => {console.log(`run version ${data}`)});
