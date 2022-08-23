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
