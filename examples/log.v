import log

fn main() {
	mut l := log.Log{
		level: .info
		output_target: .console
	}
	l.info('info message')
}
