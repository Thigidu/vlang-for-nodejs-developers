struct Person {
	age  int
	name string
}

fn main() {
	person := Person{
		age: 50
		name: 'Sam'
	}

	age, name := person.age, person.name
	println(age)
	println(name)
}
