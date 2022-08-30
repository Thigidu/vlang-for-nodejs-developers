import time

struct NodeReaderError {
	Error
	path string
}

fn (err NodeReaderError) msg() string {
	return ' $time.now() : $err.path does not exist'
}

fn read_folder(path string) ? {
	return IError(NodeReaderError{
		path: path
	})
}

fn main() {
	read_folder('/files') or { panic(err) }
}
