struct Actor {
	name string
	age  int
}

struct List {
	actors []Actor
}

fn (l List) by_name(name string) !Actor {
    for a in l.actors {
        if a.name == name {
            return a
        }
    }
    return error('Employee $name not exist')
}

fn main() {
	actor := List{
		actors: [Actor{
			name: 'John'
			age: 18
		}]
	}
	actor_details := actor.by_name('John')!
	println(actor_details)
	actor_details2 := actor.by_name('Angelina')!
	println(actor_details2)
}
