const employee = {
    name: {
        'firstname': 'Jack',
        'lastname': 'Dane'
    },
    fullname: function () {
        return `${this.name.firstname} ${this.name.lastname}`
    }
}

let fullname = employee.fullname()
console.log(employee.name.firstname);
console.log(fullname);