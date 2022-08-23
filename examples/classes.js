class Employee {
    constructor(id) {
        this.emp_id = id
        this.name = 'John'
        this.age = 0
        this.salary = 100
    }

    setSalary(salary) {
        return this.salary = salary
    }

    getEmail() {
        return 'some@email'
    }
}

const emp1 = new Employee(id = 100)
console.log(emp1.name)
console.log(emp1.salary);
emp1.setSalary(1000000)
console.log(emp1.salary);
console.log(emp1.getEmail());