all: build run

build: build_i build_s build_o
	ld -m elf_i386 -o demo_gcc --dynamic-linker /lib32/ld-linux.so.2 main.o /usr/lib32/Scrt1.o -lc

run: 
	./demo_gcc

clean: 
	rm -f demo_gcc main.i main.s main.o

build_i:
	cpp -o main.i main.c

build_s:
	gcc -m32 -S -o main.s main.i -Wall -Wextra -Werror -Wpedantic

build_o:
	as --32 -o main.o main.s
