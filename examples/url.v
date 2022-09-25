import net.urllib

fn main() {
	test_url := 'https://github.com/Thigidu/vlang-for-nodejs-developers#contents'
	u := urllib.parse(test_url) or { panic('unable to parse') }
	println('Host: $u.hostname()')
	println('Path: $u.path')
	println('Fragment: $u.fragment')
}
