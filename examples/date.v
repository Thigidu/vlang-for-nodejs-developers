import time

fn main() {
	println(time.now())
	println(time.long_months)
	println(time.utc().unix_time_milli())
	println(time.now().custom_format('MMM DD, YYYY'))

	// Diff between two dates
	mut date1 := '2022-01-27 00:00:00'
	mut date2 := '2022-02-27 00:00:00'

	// parse the date string to Time
	pt1 := time.parse(date1)?
	pt2 := time.parse(date2)?

	// Subtract and divide by 24
	millis := (pt2 - pt1).milliseconds() // hours between dates
	days := millis / (1000 * 60 * 60 * 24)
	println(millis)
	println(int(days))
}
