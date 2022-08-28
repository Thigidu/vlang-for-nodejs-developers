const fs = require("fs");
// Stdout
console.log('Hello')
process.stdout.write('Hello \n')

//stderr
console.error('Some error')
process.stderr.write('Some error \n')

// read from stdin
const data = fs.readFileSync(0, "utf-8");
console.log(data);