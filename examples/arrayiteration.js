let colors = ['Red', 'Green', 'Yellow', 'Blue', 'Purple']
colors.forEach((color) => console.log(color))

let upper = colors.map((color) => color.toUpperCase())
console.log(upper);

let numbers =  [1, 2, 3, 4, 5, 6]

even_numbers = numbers.filter(value => value % 2 == 0)
console.log(even_numbers);

let sum = numbers.reduce(
    (previousValue, currentValue) => previousValue + currentValue, 0
  );

console.log(sum);
  