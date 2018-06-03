FROM ubuntu:16.04
LABEL maintainer="Ting-Han Su <ender503.tw@gmail.com>"

# Install package dependencies
RUN apt-get update && apt-get install -y \
    python3-pip python3-setuptools python3-dev \
    build-essential libssl-dev libffi-dev git curl

# Install python3 dependencies
RUN pip3 install pyota

# Copy source code into docker image
COPY iota-swarm-node /iota-swarm-node

# Build dcurl package
RUN cd /iota-swarm-node && make

EXPOSE      8000
WORKDIR     /iota-swarm-node
CMD         [ "/usr/bin/python3", "/iota-swarm-node/server.py" ]





