fn check_os(os string) {
	if os == 'mac' {
		println('Use homebrew')
	} else if os == 'windows' {
		println('Use .exe')
	} else {
		println('Support only for mac and windows')
	}
}

fn main() {
	check_os('mac')
	check_os('Linux')
	check_os('windows')
}
