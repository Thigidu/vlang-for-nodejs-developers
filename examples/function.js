const os = require('os')

// function with out arguments
function get_os() {
    return os.platform()
}

//  function with argument
function get_string_len(s) {
    return s.length
}

// Variable arguments
function addition(...nums) {
    let total = 0;
    for (const num of nums){
        total += num
    }
    return total
}

console.log(get_os())
console.log(get_string_len('Hello 🚀'))
console.log(addition(1,2,3,4,5));