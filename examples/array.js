let colors = ['Red', 'Green', 'Yellow', 'Blue', 'Purple']
console.log(colors.length) // length of an array
console.log(colors[1]) // access element by index
colors.push('Orange') // append an element to an array
const colors_copy = [...colors] // copy of colors array. 
console.log(colors_copy)
console.log(colors.sort()) // Sort an array
console.log(colors.pop()); // removes last element(Yellow) of an array and returns it
console.log(colors.includes('Yellow')) // false
