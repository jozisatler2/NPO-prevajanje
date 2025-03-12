all: build run

build: build_i build_s build_o
	ld -o demo_gcc64 --dynamic-linker /lib64/ld-linux-x86-64.so.2 main64.o /usr/lib/x86_64-linux-gnu/Scrt1.o -lc

run: 
	./demo_gcc64

clean: 
	rm -f demo_gcc64 main64.i main64.s main64.o

build_i:
	cpp -o main64.i main.c

build_s:
	gcc -S -o main64.s main64.i

build_o:
	as -o main64.o main64.s