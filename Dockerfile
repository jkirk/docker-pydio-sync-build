FROM debian:buster

RUN apt-get update && apt-get install --no-install-recommends -y python python-dev python-pip libzmq3-dev libffi-dev && apt-get install -y gcc

ENTRYPOINT [ "/bin/bash" ]
