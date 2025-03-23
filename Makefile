all: build run

build: build_i build_s build_o # 4. povezovanje z 32 linkerjem
	ld -m elf_i386 -o demo_gcc --dynamic-linker /lib32/ld-linux.so.2 main.o /usr/lib32/Scrt1.o -lc

run: 
	./demo_gcc

clean: 
	rm -f demo_gcc main.i main.s main.o

build_i:
	echo "-------------- \n1. predprocesiranje \n--------------"
	cpp -o main.i main.c

build_s:
	echo "-------------- \n2. prevajanje \n--------------"
	gcc -m32 -S -o main.s main.i -Wall -Wextra -Werror -Wpedantic

build_o:
	echo "-------------- \n3. zbiranje \n--------------"
	as --32 -o main.o main.s
