ARG UBUNTU_VERSION=24.04
FROM ubuntu:${UBUNTU_VERSION}

WORKDIR /app

RUN apt-get update && apt-get install -y gcc make gcc-multilib libc6-dev-i386

COPY main.c .
COPY Makefile .

RUN make

CMD ["./demo_gcc"]
