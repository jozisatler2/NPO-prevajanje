FROM gcc:latest

WORKDIR /app

RUN apt-get update && apt-get install -y gcc-multilib libc6-dev-i386

COPY main.c .
COPY Makefile .

RUN make

CMD ["./demo_gcc"]
