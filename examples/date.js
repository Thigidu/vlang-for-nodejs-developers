// Current time
console.log(new Date().toLocaleString());

// Month names
const months = [...Array(12).keys()].map(key => new Date(0, key).toLocaleString('ta', { month: 'long' }))
console.log(months);

//Unix timestamp
console.log(Date.now());

let dateString = new Date().toLocaleDateString('en-US', { year: 'numeric', month: 'short', day: 'numeric' });
console.log(dateString);

const date1  = '2022-01-27';
const date2    = '2022-02-27';

const millis   = new Date(date2) - new Date(date1)
const days = millis / (1000 * 60 * 60 * 24);
console.log(millis);
console.log(days);