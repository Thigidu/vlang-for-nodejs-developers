[params]
struct EmployeeConfig {
	id int
}

struct Employee {
mut:
	emp_id int
	name   string = 'John'
	age    int
	salary int = 100
}

fn (mut e Employee) set_salary(salary int) {
	e.salary = salary
}

fn (e Employee) get_email() string {
	return 'some@email'
}

fn get_emp(c EmployeeConfig) &Employee {
	return &Employee{
		emp_id: c.id
	}
}

fn main() {
	mut emp1 := get_emp(id: 100)
	println(emp1.name)
	println(emp1.salary)
	emp1.set_salary(1_000_000)
	println(emp1.salary)
	email := emp1.get_email()
	println(email)
}
