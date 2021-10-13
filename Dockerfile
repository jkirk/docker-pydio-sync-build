FROM debian:buster
MAINTAINER dpat@syn-net.org

# ENV VIRTUALENV_DIR=/opt/pydio-sync-venv

RUN apt-get update \
  && apt-get install --no-install-recommends -y \
    python \
    python-dev \
    python-pip \
    libzmq3-dev \
    libffi-dev \
  && apt-get install -y gcc \
  && pip install setuptools wheel \
  && pip install virtualenv

COPY build.sh /root
RUN chmod +x /root/build.sh
ENTRYPOINT [ "/bin/bash" ]
