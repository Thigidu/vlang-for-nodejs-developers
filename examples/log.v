import log

fn main() {
	mut l := log.Log{}
	l.set_level(.info)
	l.info('info message')
}
