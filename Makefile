main: main.c libfoo.a libbar.a

libfoo.a: foo.rs
	rustc --crate-type staticlib foo.rs

libbar.a: bar.rs
	rustc --crate-type staticlib bar.rs

clean:
	rm -f main
	rm -f libfoo.a
	rm -f libbar.a
