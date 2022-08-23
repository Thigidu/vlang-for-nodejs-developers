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
