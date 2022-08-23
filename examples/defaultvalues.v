// Need to use struct to set default params
struct Options {
	food string
	size string = 'Medium'
}

fn get_order(opt Options) string {
	return '$opt.size size $opt.food'
}

fn main() {
	order_1 := get_order(Options{
		food: 'Pizza 🍕'
	})
	order_2 := get_order(Options{
		food: 'Beer 🍺'
		size: 'Large'
	})
	println(order_1)
	println(order_2)
}
