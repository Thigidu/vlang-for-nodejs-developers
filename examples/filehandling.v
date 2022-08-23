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
