mut employee_details := {
	'name':   'John'
	'gender': 'Male'
}
for key, value in employee_details {
	println('$key -> $value')
}
println('gender' in employee_details)
println(employee_details['gender'])
println(typeof(employee_details).name)
println('bad_key' in employee_details)
employee_details.delete('name')
println(employee_details)
