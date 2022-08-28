import os

fn main() {
	println('Hello from println')
	mut o := os.stdout()
	o.writeln('Hello')?
	eprintln('Some error message')
	mut e := os.stderr()
	e.writeln('error')?
	mut i := os.stdin()
	mut d := i.read_bytes(100)
	println(d.bytestr())
}
