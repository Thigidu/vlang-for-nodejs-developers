let emplyee_1 = '{"name":"Yun", "id":87964, "email":"yun2020@someemail", "status":"active", "unused":"will be excluded"}'
let decode_emp = JSON.parse(emplyee_1)
console.log(decode_emp)
console.log(decode_emp.id)
console.log(decode_emp.name)
let encode_emp = JSON.stringify(decode_emp)
console.log(encode_emp);