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
