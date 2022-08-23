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
