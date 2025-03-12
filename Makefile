all: build run

build: build_i build_s build_o
	ld -o demo_gcc --dynamic-linker /lib64/ld-linux-x86-64.so.2 main.o /usr/lib/x86_64-linux-gnu/Scrt1.o -lc

run: 
	./demo_gcc

clean: 
	rm -rf demo_gcc

build_i:
	cpp -o main.i main.c

build_s:
	gcc -S -o main.s main.i

build_o:
	as -o main.o main.s
