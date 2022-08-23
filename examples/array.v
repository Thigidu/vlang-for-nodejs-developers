fn main() {
	mut colors := ['Red', 'Green', 'Yellow', 'Blue', 'Purple']
	println(colors.len)
	println(colors[1])
	colors << 'Orange'
	colors_copy := colors.clone()
	println(colors_copy)
	colors.sort()

	println(colors)
	println(colors.pop())
	println('Yellow' in colors)
}
