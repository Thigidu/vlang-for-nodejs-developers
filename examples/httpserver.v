import vweb

struct App {
	vweb.Context
}

['/version'; get]
pub fn (mut app App) get_version() vweb.Result {
	return app.json({
		'version': 'V 0.3'
	})
}

fn main() {
	vweb.run(&App{}, 8080)
}
