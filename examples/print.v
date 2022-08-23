import strconv

fn main() {
	random_string := 'some random string'
	some_int := 1
	println('Prints a message in v with new line')
	strconv.v_printf('Format printing example %s %d \n', random_string, some_int)
	eprintln('Print error message')
}
