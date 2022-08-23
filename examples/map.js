const employee_details = new Map()
employee_details.set('name', 'John')
employee_details.set('gender', 'Male')
// Iterate map
for (let [key, value] of employee_details) {
    console.log(key, '->', value)
}
console.log(employee_details.has('gender'))
console.log(employee_details.get('gender'))
console.log(typeof (employee_details));
console.log(employee_details.get('bad_key'))
employee_details.delete('name')
console.log(employee_details);
