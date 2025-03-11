all: build run

build:
	gcc -o program main.c

run: 
	./program

clean: 
	rm -rf program