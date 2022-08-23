import json

struct Emp {
	name   string
	id     int
	email  string
	status string
}

fn main() {
	emplyee_1 := '{"name":"Yun", "id":87964, "email":"yun2020@someemail", "status":"active", "unused":"will be excluded"}'

	mut decode_emp := json.decode(Emp, emplyee_1) or {
		println(err)
		return
	}
	println(decode_emp)
	println(decode_emp.id)
	println(decode_emp.name)

	mut encode_emp := json.encode(decode_emp)
	println(encode_emp)
}
