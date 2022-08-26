# vlang-for-nodejs-developers

Understanding vlang using node js examples

[Vlang](https://github.com/vlang/v) examples compared with [NodeJs](https://nodejs.org/)

Inspired by [golang-for-nodejs-developers](https://github.com/miguelmota/golang-for-nodejs-developers). Structure of the example is almost same as this repo.
## Contents
 - [Comments](#Comments)
 - [Print](#print)
 - [Logging](#logging)
 - [Variables](#variables)
 - [Types](#types)
 - [Interpolation](#interpolation)
 - [If else](#ifelse)
 - [For Loop](#for-loop)
 - [While Loop](#while-loop)
 - [Switch](#switch)
 - [Arrays](#arrays)
   - [Iteration](#array-iteration)
     - [For each](#array-iteration)
     - [Map](#array-iteration)
     - [Filter](#array-iteration)
     - [Reduce](#array-iteration)
 - [Map](#map)
 - [Object](#object)
 - [Functions](#functions)
 - [Default Values](#default-values)
 - [Destructure](#destructure)
 - [Spread Operator](#spread-operator)
 - [Rest Parameter](#rest-parameter)
 - [Swapping](#swapping)
 - [Classes](#classes)
 - [Generators](#generators) Need help 🙏
 - [Date Time](#date-time)
   - [Unix Timestamp](#date-time)
   - [Parsing](#date-time)
   - [Formatting](#date-time)
   - [Difference](#date-time)
 - [Callback/Wait](#callback)
 - [Interval](#contents) ToDo 🚧
 - [IIFE](#IIFE)
 - [File handling](#file-handling)
   - [Read](#file-handling)
   - [Write](#file-handling)
   - [Create](#file-handling)
   - [Delete](#file-handling)
 - [JSON](#json)
   - [Encode/Parse](#json)
   - [Decode/Stringify](#json)
 - [Promise](#promise)
 - [Try/Catch](#try-catch)
 - [Http Server](#http-server)
 - [Modules](#modules)
   - [Export](#modules)
   - [Import](#modules)
 - [Package Management](#package-management)
   - [Install](#package-management)
   - [Update](#package-management)
   - [Remove](#package-management)

 ## Work In progress
	buffers
	streams
	reading
	writing
	event emitter
	errors
	exceptions
	regex
	exec (sync)
	exec (async)
	tcp server
	udp server
	url parse
	gzip 
	dns 
	crypto
	sha256
	env vars
	cli args
	cli flags
	stdout
	stderr
	stdin
### Comments
---
#### Node.js
```node
// single line comment

/**
 * multi line comments
 */
```
#### V
```v
// Single line comment.

/*
Multiline comment.
*/
```
**[⬆ back to top](#contents)**

## Print
---
### Node.js
```node
console.log('Print log to console') // Stdout
var randomString = 'some random sting';
var someInt = 1;
console.log('Format printing example %s %d', randomString , someInt)
console.error('Print some error message') // Stderr 
```

#### Output

```
Print log to console
Format printing example some random sting 1
Print some error message
```
### V
```v
import strconv

fn main(){
	random_string := 'some random string' 
	some_int := 1  
	println('Prints a message in v with new line')	
	strconv.v_printf('Format printing example %s %d \n', random_string, some_int)
	eprintln('Print error message')
}
 
```

#### Output

```
Prints a message in v with new line
Format printing example some random string 1 
Print error message
```
**[⬆ back to top](#contents)**
## Logging
---
### Node.js
```node
console.log((new Date()).toISOString(), '-', 'Log message')
```

#### Output

```
2022-08-14T02:27:36.509Z - Log message
```
### V
```v
import log

fn main() {
	mut l := log.Log{
		level: .info
		output_target: .console
	}
	l.info('info message')
}
```

#### Output

```
2022-08-14T05:30:40.117Z - Log message
```
**[⬆ back to top](#contents)**

## Variables
---
### Node.js
```node
// function scoped
var x = 'Cat 🐈'

// block scoped
let y = 'Dog 🐕'

// constant
const z = 'Fox 🦊'
```
### V
```v
mut y := 'Dog 🐕'
y = 'Monkey 🐒'
println(y)

x := 'Cat 🐈'
// You can not assign a value to `x` again
// x = '10'
println(x)
```

#### Output

```
Monkey 🐒
Cat 🐈
```
**[⬆ back to top](#contents)**

## Types
---
### Node.js

```node
// 7 Primitive types
// string
const sampleString = 'Hello Tom'
console.log(typeof(sampleString))
// number
const count = 10
console.log(typeof(count))
// boolean
const isEnabled = false
console.log(typeof(isEnabled))
// null
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/typeof#typeof_null
const salary = null
console.log(typeof(salary)); // It is object
// undefined
const isMale = undefined
console.log(typeof(isMale));
// symbol
const mySymbol = Symbol()
console.log(typeof(mySymbol));
// bigint
const myBigInt = 123242343343n
console.log(typeof(myBigInt));
```

#### Output
```
string
number
boolean
object
undefined
symbol
bigint
```
### V
```v
// string
a := 'Sample string'
println(typeof(a).name)

//int 
b := 10
println(typeof(b).name)

//bool
c := true
println(typeof(c).name)

// No null, no undefined data types

// Couldn't find anything related to javascript`s Symbol

big_int := i64(9999999999)
println(typeof(big_int).name)

```

#### Output

```
string
int
bool
i64
```
**[⬆ back to top](#contents)**

## Interpolation
---
### Node.js

```node
const os = 'Mac'
const version = 13
const message = `You are using ${os} version ${version}`
console.log(message)
```
#### Output
```
You are using Mac version 1
```
### V
```v
fn main() {
	os := 'Mac'
	version := 13
	println('You are using $os version $version')
}

```

#### Output

```
You are using Mac version 13
```
**[⬆ back to top](#contents)**

## If/Else
---
### Node.js

```node
function check_os(os) {
    if (os === 'mac') {
        console.log('Use homebrew')
    } else if (os === 'windows') {
        console.log('Use .exe')
    } else {
        console.log('Support only for mac and windows')
    }
}

check_os('mac')
check_os('Linux')
check_os('windows')
```
#### Output
```
Use homebrew
Support only for mac and windows
Use .exe
```
### V
```v
fn check_os(os string) {
	if os == 'mac' {
		println('Use homebrew')
	} else if os == 'windows' {
		println('Use .exe')
	} else {
		println('Support only for mac and windows')
	}
}

fn main() {
	check_os('mac')
	check_os('Linux')
	check_os('windows')
}

```

#### Output

```
Use homebrew
Support only for mac and windows
Use .exe
```
**[⬆ back to top](#contents)**


## For Loop
---
### Node.js

```node
const colors = ['Red', 'Black', 'Blue', 'White', 'Pink']
for (let i in colors) {
    console.log(colors[i]);
}

for (let i in colors) {
    console.log(`Index ${i} ${colors[i]}`);
}
```
#### Output
```
Red
Black
Blue
White
Pink
Index 0 Red
Index 1 Black
Index 2 Blue
Index 3 White
Index 4 Pink
```
### V
```v
fn main() {
	colors := ['Red', 'Black', 'Blue', 'White', 'Pink']
	for color in colors {
		println(color)
	}
	for i, color in colors {
		println('Index $i $color')
	}
}

```

#### Output

```
Red
Black
Blue
White
Pink
Index 0 Red
Index 1 Black
Index 2 Blue
Index 3 White
Index 4 Pink
```
**[⬆ back to top](#contents)**


## While Loop
---
### Node.js

```node
let sum = 0
let i = 0
while (i <= 10) {
    sum += i
    i++
}
console.log(sum);
```
#### Output
```
55
```
### V
```v
mut sum := 0
mut i := 0
for i <= 10 {
	sum += i
	i++
}
println(sum)
```

#### Output

```
55
```
**[⬆ back to top](#contents)**


## Switch
---
### Node.js

```node
const value = 'Green'

switch (value) {
    case 'Red':
        console.log('Stop')
        break
    case 'Yellow':
        console.log('Slowdown')
        break
    case 'Green':
        console.log('Go..')
        break
    default:
        console.log('Something wrong')
}

```
#### Output
```
Go..
```
### V
```v
signal := 'Green'
match signal {
	'Red' { println('Stop') }
	'Yellow' { println('Slowdown') }
	'Green' { println('Go..') }
	else { println('Something wrong') }
}

```

#### Output

```
Go..
```
**[⬆ back to top](#contents)**

## Arrays
---
### Node.js

```node
let colors = ['Red', 'Green', 'Yellow', 'Blue', 'Purple']
console.log(colors.length) // length of an array
console.log(colors[1]) // access element by index
colors.push('Orange') // append an element to an array
const colors_copy = [...colors] // copy of colors array. 
console.log(colors_copy)
console.log(colors.sort()) // Sort an array
console.log(colors.pop()); // removes last element(Yellow) of an array and returns it
console.log(colors.includes('Yellow')) // false

```
#### Output
```
5
Green
[ 'Red', 'Green', 'Yellow', 'Blue', 'Purple', 'Orange' ]
[ 'Blue', 'Green', 'Orange', 'Purple', 'Red', 'Yellow' ]
Yellow
false
```
### V
```v 
fn main() {
	mut colors := ['Red', 'Green', 'Yellow', 'Blue', 'Purple']
	println(colors.len)
	println(colors[1])
	colors << 'Orange'
	colors_copy := colors.clone()
	println(colors_copy)
	colors.sort()

	println(colors)
	println(colors.pop())
	println('Yellow' in colors)
}

```

#### Output

```
5
Green
['Red', 'Green', 'Yellow', 'Blue', 'Purple', 'Orange']
['Blue', 'Green', 'Orange', 'Purple', 'Red', 'Yellow']
Yellow
false
```
**[⬆ back to top](#contents)**


## Array Iteration
---
### Node.js

```node
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
```
#### Output
```
Red
Green
Yellow
Blue
Purple
[ 'RED', 'GREEN', 'YELLOW', 'BLUE', 'PURPLE' ]
[ 2, 4, 6 ]
21
```
### V
```v 
import arrays

fn main() {
	mut colors := ['Red', 'Green', 'Yellow', 'Blue', 'Purple']
	for color in colors {
		println(color)
	}
	upper := colors.map(fn (w string) string {
		return w.to_upper()
	})
	println(upper)

	numbers := [1, 2, 3, 4, 5, 6]
	even_numbers := numbers.filter(it % 2 == 0)
	println(even_numbers)

	m := arrays.reduce(numbers, fn (t1 int, t2 int) int {
		return t1 + t2
	})?
	println(m)
}
```

#### Output

```
Red
Green
Yellow
Blue
Purple
['RED', 'GREEN', 'YELLOW', 'BLUE', 'PURPLE']
[2, 4, 6]
21
```
**[⬆ back to top](#contents)**


## Map
---
### Node.js

```node
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

```
#### Output
```
name -> John
gender -> Male
true
Male
object
undefined
Map { 'gender' => 'Male' }
```
### V
```v 
mut employee_details := {
	'name':   'John'
	'gender': 'Male'
}
for key, value in employee_details {
	println('$key -> $value')
}
println('gender' in employee_details)
println(employee_details['gender'])
println(typeof(employee_details).name)
println('bad_key' in employee_details)
employee_details.delete('name')
println(employee_details)

```

#### Output

```
name -> John
gender -> Male
true
Male
map[string]string
false
{'gender': 'Male'}
```
**[⬆ back to top](#contents)**
## Object
---
### Node.js

```node
const employee = {
    name: {
        'firstname': 'Jack',
        'lastname': 'Dane'
    },
    fullname: function () {
        return `${this.name.firstname} ${this.name.lastname}`
    }
}

let fullname = employee.fullname()
console.log(employee.name.firstname);
console.log(fullname);
```
#### Output
```
Jack
Jack Dane
```
### V
```v 
struct Name {
	firstname string
	lastname  string
}

struct Employee {
	Name
}

fn (name Name) fullname() string {
	return '$name.firstname $name.lastname'
}

mut a := Employee{
	firstname: 'Jack'
	lastname: 'Dane'
}
println(a.firstname)
println(a.fullname())

```
#### Output
```
Jack
Jack Dane
```
**[⬆ back to top](#contents)**

## Functions
---
### Node.js

```node
const os = require('os')

// function with out arguments
function get_os() {
    return os.platform()
}

//  function with argument
function get_string_len(s) {
    return s.length
}

console.log(get_os())
console.log(get_string_len('Hello 🚀'))
```
#### Output
```
darwin
8
```
### V
```v 
import os

// function with out arguments
fn get_os() string {
	return os.user_os()
}

//  function with argument
fn get_string_len(s string) int {
	return s.len
}

fn main() {
	println(get_os())
	println(get_string_len('Hello 🚀')) // Emoji holds 4
}
```
#### Output
```
macos
10
```
**[⬆ back to top](#contents)**
## Default Values
---
### Node.js

```node
function get_order({
    food,
    size = 'Medium'
}) {
    return `${size} size ${food}`
}

order_1 = get_order({food: 'Pizza 🍕'})
order_2 = get_order({food: 'Beer 🍺', size: 'Large'})
console.log(order_1);
console.log(order_2);
```
#### Output
```
Medium size Pizza 🍕
Large size Beer 🍺
```
### V
```v 
// Need to use struct to set default params
struct Options {
	food string
	size string = 'Medium'
}

fn get_order(opt Options) string {
	return '$opt.size size $opt.food'
}

fn main() {
	order_1 := get_order(Options{
		food: 'Pizza 🍕'
	})
	order_2 := get_order(Options{
		food: 'Beer 🍺'
		size: 'Large'
	})
	println(order_1)
	println(order_2)
}

```
#### Output
```
Medium size Pizza 🍕
Large size Beer 🍺
```
**[⬆ back to top](#contents)**
## Destructure
---
### Node.js

```node
let person = {
    age: 50,
    name: 'Sam'
};

let { age, name } = person
console.log(age);
console.log(name);
```
#### Output
```
50
Sam
```
### V
```v 
struct Person {
	age  int
	name string
}

fn main() {
	person := Person{
		age: 50
		name: 'Sam'
	}

	age, name := person.age, person.name
	println(age)
	println(name)
}


```
#### Output
```
50
Sam
```
**[⬆ back to top](#contents)**
## Spread Operator
---
### Node.js

```node
let colors = ['Red', 'Green', 'Yellow', 'Blue', 'Purple']
let morecolors = ['White', ...colors]
console.log(morecolors);
```
#### Output
```
[ 'White', 'Red', 'Green', 'Yellow', 'Blue', 'Purple' ]
```
### V
```v 
mut colors := ['Red', 'Green', 'Yellow', 'Blue', 'Purple']
mut morecolors := ['White']
// Not exactly equal to Javascript's spread
morecolors << colors
println(morecolors)


```
#### Output
```
['White', 'Red', 'Green', 'Yellow', 'Blue', 'Purple']
```
**[⬆ back to top](#contents)**
## Rest Parameter
---
### Node.js

```node
// Variable arguments
function addition(...nums) {
    let total = 0;
    for (const num of nums){
        total += num
    }
    return total
}
console.log(addition(1,2,3,4,5));
```
#### Output
```
15
```
### V
```v 
// Variable number of arguments
fn addition(nums ...int) int {
	mut total := 0
	for n in nums {
		total += n
	}
	return total
}

fn main() {
	println(addition(1, 2, 3, 4, 5))
}

```
#### Output
```
15
```
**[⬆ back to top](#contents)**
## Swapping
---
### Node.js

```node
let order1 = 'Salad 🥗 '
let order2 = 'Pizza 🍕'
console.log(`Wife ordered ${order1}, Husband ordered ${order2}`)
order2 = [order1, order1 = order2][0];
console.log(`They swapped and now Wife have ${order1}, husband have ${order2}`)

```
#### Output
```
Wife ordered Salad 🥗 , Husband ordered Pizza 🍕
They swapped and now Wife have Pizza 🍕, husband have Salad 🥗 
```
### V
```v 
mut order1 := 'Salad 🥗'
mut order2 := 'Pizza 🍕'
println('Wife ordered $order1, Husband ordered $order2')
order1, order2 = order2, order1
println('They swapped and now Wife have $order1, husband have $order2')

```
#### Output
```
Wife ordered Salad 🥗, Husband ordered Pizza 🍕
They swapped and now Wife have Pizza 🍕, husband have Salad 🥗
```
**[⬆ back to top](#contents)**
## Classes
---
### Node.js

```node
class Employee {
    constructor(id) {
        this.emp_id = id
        this.name = 'John'
        this.age = 0
        this.salary = 100
    }

    setSalary(salary) {
        return this.salary = salary
    }

    getEmail() {
        return 'some@email'
    }
}

const emp1 = new Employee(id = 100)
console.log(emp1.name)
console.log(emp1.salary);
emp1.setSalary(1000000)
console.log(emp1.salary);
console.log(emp1.getEmail());

```
#### Output
```
John
100
1000000
some@email
```
### V
```v 
[params]
struct EmployeeConfig {
	id int
}

struct Employee {
mut:
	emp_id int
	name   string = 'John'
	age    int
	salary int = 100
}

fn (mut e Employee) set_salary(salary int) {
	e.salary = salary
}

fn (e Employee) get_email() string {
	return 'some@email'
}

fn get_emp(c EmployeeConfig) &Employee {
	return &Employee{
		emp_id: c.id
	}
}

fn main() {
	mut emp1 := get_emp(id: 100)
	println(emp1.name)
	println(emp1.salary)
	emp1.set_salary(1_000_000)
	println(emp1.salary)
	email := emp1.get_email()
	println(email)
}

```
#### Output
```
John
100
1000000
some@email
```
**[⬆ back to top](#contents)**

## Generators
---
Need help

## Date Time
---
### Node.js

```node
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

```
#### Output
```
8/20/2022, 8:16:47 PM
[
  'January',   'February',
  'March',     'April',
  'May',       'June',
  'July',      'August',
  'September', 'October',
  'November',  'December'
]
1661051807476
Aug 20, 2022
2678400000
31
```
### V
```v 
import time

fn main() {
	println(time.now())
	println(time.long_months)
	println(time.utc().unix_time_milli())
	println(time.now().custom_format('MMM DD, YYYY'))

	// Diff between two dates
	mut date1 := '2022-01-27 00:00:00'
	mut date2 := '2022-02-27 00:00:00'

	// parse the date string to Time
	pt1 := time.parse(date1)?
	pt2 := time.parse(date2)?

	// Subtract and divide by 24
	millis := (pt2 - pt1).milliseconds() // hours between dates
	days := millis / (1000 * 60 * 60 * 24)
	println(millis)
	println(int(days))
}

```
#### Output
```
2022-08-20 20:19:22
['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
1661051962639
Aug 20, 2022
2678400000
31
```
**[⬆ back to top](#contents)**

## Callback

#### Waits for 5 seconds
---
### Node.js

```node
setTimeout(process, 5000)

function process() {
  console.log('Processing..')
}

```
#### Output
```
Processing..
```
### V
```v 
import sync
import time

fn process(mut wg sync.WaitGroup) {
	defer {
		wg.done()
	}
	println('Processing..')
	time.sleep(5000 * time.millisecond)
}

fn main() {
	mut wg := sync.new_waitgroup()
	wg.add(1)
	go process(mut wg)
	wg.wait()
}

```
#### Output
```
Processing..
```
**[⬆ back to top](#contents)**

## IIFE

#### Immediately Invoked Function Expression
---
### Node.js

```node
const x = 'John';

(function (x) {
    console.log('Hello', x)
})(x)
```
#### Output
```
Hello John
```
### V
```v 
fn main() {
	// anonymous functions

	fn (x string) {
		println('Hello $x')
	}('John')
}

```
#### Output
```
Hello John
```
**[⬆ back to top](#contents)**

## File Handling

#### Create, Read, Write, Delete file
---
### Node.js

```node
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
```
#### Output
```
file_sample.txt not present
1661261346709 - Log message 
```
### V
```v 
import os
import time

fn main() {
	unix_time := time.now().unix_time_milli().str()
	println(unix_time)
	abs_path := os.abs_path('file_sample.txt')

	// check if the file is present or not
	file_exist := os.exists(abs_path)

	if file_exist {
		println('file_sample.txt exist')
	} else {
		println('file_sample.txt not present')
	}
	mut append_file := os.open_append(abs_path) or { panic(err) }
	append_file.writeln('$unix_time - Log message')?
	append_file.close()
	mut read_file := os.open(abs_path)?
	mut buf := []u8{len: 100}

	for {
		buf_read := read_file.read_bytes_into_newline(mut buf) or { panic(err) }
		// convert bytes into string
		s := buf#[..buf_read].bytestr()
		if read_file.eof() {
			break
		}
		println(s)
	}
	read_file.close()
	os.rm(abs_path) or { panic(err) }
}

```
#### Output
```
1661236319312
file_sample.txt not present
1661236319312 - Log message
```
**[⬆ back to top](#contents)**
## Json

#### Encode Decode
---
### Node.js

```node
let emplyee_1 = '{"name":"Yun", "id":87964, "email":"yun2020@someemail", "status":"active", "unused":"will be excluded"}'
let decode_emp = JSON.parse(emplyee_1)
console.log(decode_emp)
console.log(decode_emp.id)
console.log(decode_emp.name)
let encode_emp = JSON.stringify(decode_emp)
console.log(encode_emp);
```
#### Output
```
{
  name: 'Yun',
  id: 87964,
  email: 'yun2020@someemail',
  status: 'active',
  unused: 'will be excluded'
}
87964
Yun
{"name":"Yun","id":87964,"email":"yun2020@someemail","status":"active","unused":"will be excluded"}
```
### V
```v 
import json

struct Emp {
	name   string
	id     int
	email  string
	status string
}

fn main() {
	emplyee_1 := '{"name":"Yun", "id":87964, "email":"yun2020@someemail", "status":"active", "unused":"will be excluded"}'

	mut decode_emp := json.decode(Emp, emplyee_1) or {
		println(err)
		return
	}
	println(decode_emp)
	println(decode_emp.id)
	println(decode_emp.name)

	mut encode_emp := json.encode(decode_emp)
	println(encode_emp)
}

```
#### Output
```
Emp{
    name: 'Yun'
    id: 87964
    email: 'yun2020@someemail'
    status: 'active'
}
87964
Yun
{"name":"Yun","id":87964,"email":"yun2020@someemail","status":"active"}
```
**[⬆ back to top](#contents)**
## Promise

#### Equivalent to javascript promise and async
---
### Node.js

```node
function task(value) {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve('Completed')
        }, 1e3)
    })
}

(function () {
    Promise.all([
        task(1),
        task(2),
        task(3)
    ])
        .then(result => console.log(result))
        .catch(err => console.error(err))
})()

```
#### Output
```
[ 'Completed', 'Completed', 'Completed' ]
```
### V
```v 
import time
import rand

fn task(id int, duration int) string {
	time.sleep(duration * time.millisecond)
	println('task $id end')
	return 'Task $id completed in $duration milliseconds'
}

fn main() {
	mut threads := []thread string{}
	threads << go task(1, rand.int_in_range(1000, 10000)?)
	threads << go task(2, rand.int_in_range(1000, 10000)?)
	threads << go task(3, rand.int_in_range(1000, 10000)?)
	res := threads.wait()
	println(res)
}

```
#### Output
```
task 1 end
task 3 end
task 2 end
['Task 1 completed in 2131 milliseconds', 'Task 2 completed in 8710 milliseconds', 'Task 3 completed in 4047 milliseconds']
```
**[⬆ back to top](#contents)**
#### Try Catch
---
### Node.js

```node
const actors = [{ name: "John", age: 18 }]

function actor_by_name(name) {

    for (actor of actors) {
        if (actor.name === name) {
            return actor
        }
    }
    throw Error(`Actor ${name} not exist`)
}

(function () {
    try {
        console.log(actor_by_name('John'))
        console.log(actor_by_name('Angelina'))
        
    } catch (e) {
        console.log(e);
    }
})()
```
#### Output
```
{ name: 'John', age: 18 }
Error: Actor Angelina not exist
    at actor_by_name (/Users/vlang-for-nodejs-developers/examples/trycatch.js:10:11)
    at /Users/vlang-for-nodejs-developers/examples/trycatch.js:16:21
    at Object.<anonymous> (/Users/vlang-for-nodejs-developers/examples/trycatch.js:21:3)
    at Module._compile (node:internal/modules/cjs/loader:1120:14)
    at Module._extensions..js (node:internal/modules/cjs/loader:1174:10)
    at Module.load (node:internal/modules/cjs/loader:998:32)
    at Module._load (node:internal/modules/cjs/loader:839:12)
    at Function.executeUserEntryPoint [as runMain] (node:internal/modules/run_main:81:12)
    at node:internal/main/run_main_module:17:47
```
### V
```v 
struct Actor {
	name string
	age  int
}

struct List {
	actors []Actor
}

fn (l List) by_name(name string) ?Actor {
	for a in l.actors {
		if a.name == name {
			return a
		}
	}
	return error('Employee $name not exist')
}

fn main() {
	actor := List{
		actors: [Actor{
			name: 'John'
			age: 18
		}]
	}
	actor_details := actor.by_name('John') or { panic(err) }
	println(actor_details)
	actor_details2 := actor.by_name('Angelina') or { panic(err) }
	println(actor_details2)
}
```
#### Output
```
Actor{
    name: 'John'
    age: 18
}
V panic: Employee Angelina not exist
v hash: 3bc01d6
0   trycatch                            0x000000010f7cf4cf main__main + 687
1   trycatch                            0x000000010f7d01ac main + 76
2   trycatch                            0x000000010f7a80b4 start + 52
3   ???                                 0x0000000000000001 0x0 + 1
```
**[⬆ back to top](#contents)**
#### Http server
---
### Node.js

```node
const http = require('http');

const server = http.createServer(function (req, res) {

    var url = req.url;
    if (url === '/version') {
        res.writeHead(200, { 'Content-Type': 'application/json' });
        res.end(JSON.stringify({
            data: 'node 16'
        }));
    } else {
        res.writeHead(404, { 'Content-Type': 'application/json' });
        res.end(JSON.stringify({
            error: 'Not found'
        }));
    }
})

server.listen(8080, function () {
    console.log("Server running on 8080");
}); 
```
#### Output
```
curl --get localhost:8080/version
{"data":"node 16"}
curl --get localhost:8080/unknowpath
{"error":"Not found"}
```
### V
```v 
import vweb

struct App {
	vweb.Context
}

['/version'; get]
pub fn (mut app App) get_version() vweb.Result {
	return app.json({
		'version': 'V 0.3'
	})
}

fn main() {
	vweb.run(&App{}, 8080)
}

```
#### Output
```
curl --get localhost:8080/version
{"version":"V 0.3"}
curl --get localhost:8080/unknowpath
404 Not Found
```
**[⬆ back to top](#contents)**

#### Modules
---
### Node.js

```node
//exportmodule.js
const crypto = require('crypto')
module.exports = {
    get_random_num: () => Math.floor(Math.random() * 1000),
    get_random_uuid: () => crypto.randomUUID()
}

// module.js
const random = require('./exportmodule')

console.log(random.get_random_num());
console.log(random.get_random_uuid());
```
#### Output
```
616
079da02f-53e9-4d5c-b899-871c5d3081a1
```
### V
```v
//random/num.v
module random

import rand

// `pub` is similar to node`s module.exports
pub fn get_random_num() ?u32 {
	return rand.u32_in_range(1,1000)
}

//random/uuid.v
module random 

import rand

pub fn get_random_uuid() string{
	return rand.uuid_v4()
}

// module.v
// import module called random which is inside random folder
import random

fn main() {
	n := random.get_random_num() or { panic(err) }
	println(n)
	uuid := random.get_random_uuid()
	println(uuid)
}

```
#### Output
```
785
b00c215e-375e-4737-932f-62908f48a167
```
**[⬆ back to top](#contents)**
#### Package Management
---
### Node.js

- NPM helps to manage packages
- By default npm uses [npmjs.com](https://registry.npmjs.org) to download packages
- Install a package `npm install packagename`
- To remove a package `npm uninstall packagename`
- To publish a package `npm publish`
- More information https://docs.npmjs.com/cli/v8/commands/npm

### V

- Packages are maintained [VPM](https://vpm.vlang.io/) 
- Modules can be installed directly from Git.
- Install package `v install packagename`
- Install from Git `v install --git https://github.com/vlang/markdown`
- Remove package `v remove packagename`
- More information on [Vlang package management](https://github.com/vlang/v/blob/master/doc/docs.md#package-management)

**[⬆ back to top](#contents)**