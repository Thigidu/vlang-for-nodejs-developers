// Variable arguments
function addition(...nums) {
    let total = 0;
    for (const num of nums){
        total += num
    }
    return total
}
console.log(addition(1,2,3,4,5));