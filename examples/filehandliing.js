const fs = require('fs');
const readline = require('readline');
const path = require('path');


unix_time = Date.now()
const dir = __dirname;
const file_name = path.join(__dirname, 'file_sample.txt');

file_exist = fs.existsSync(file_name)
if (file_exist) {
    console.log('file_sample.txt exist');
} else {
    console.log('file_sample.txt not present');
}
let message = `${unix_time} - Log message \n`
fs.appendFile(file_name, message, function (err) {
    if (err) throw err;
})

var line_reader = readline.createInterface({
    input: require('fs').createReadStream(file_name)
});

line_reader.on('line', function (line) {
    console.log(line);
});

fs.rm(file_name, function (err) {
    if (err) throw err
})