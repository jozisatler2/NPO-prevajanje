all: build run #ok

build: build_i build_s build_o  # gcc -o demo_gcc main.c

run: 
	./demo_gcc

clean: 
	rm -rf demo_gcc

build_i:

build_s:

build_o:
