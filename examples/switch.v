signal := 'Green'
match signal {
	'Red' { println('Stop') }
	'Yellow' { println('Slowdown') }
	'Green' { println('Go..') }
	else { println('Something wrong') }
}
