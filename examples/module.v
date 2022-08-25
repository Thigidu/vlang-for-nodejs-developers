// import module called random which is inside random folder
import random

fn main() {
	n := random.get_random_num() or { panic(err) }
	println(n)
	uuid := random.get_random_uuid()
	println(uuid)
}
