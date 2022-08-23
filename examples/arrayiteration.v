import arrays

fn main() {
	mut colors := ['Red', 'Green', 'Yellow', 'Blue', 'Purple']
	for color in colors {
		println(color)
	}
	upper := colors.map(fn (w string) string {
		return w.to_upper()
	})
	println(upper)

	numbers := [1, 2, 3, 4, 5, 6]
	even_numbers := numbers.filter(it % 2 == 0)
	println(even_numbers)

	m := arrays.reduce(numbers, fn (t1 int, t2 int) int {
		return t1 + t2
	})?
	println(m)
}
