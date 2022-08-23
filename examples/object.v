struct Name {
	firstname string
	lastname  string
}

struct Employee {
	Name
}

fn (name Name) fullname() string {
	return '$name.firstname $name.lastname'
}

mut a := Employee{
	firstname: 'Jack'
	lastname: 'Dane'
}
println(a.firstname)
println(a.fullname())
