# IOTA Swarm Node

## Summary

[iota-swarm-node](https://github.com/yillkid/iota-swarm-node) is a proof-of-concept implementation of IOTA Swarm node, that is a device with software/hardware implementing an algorithm aiming for allowing several swarm nodes behave as a full node.

By using this repository, you can build the `iota-swarm-node` docker image.

## Prerequisites

1. Install the docker

2. Clone the `iota-swarm-node`

```
  $ git clone git@github.com:yillkid/iota-swarm-node.git iota-swarm-node
```

## Build from scratch

To build the docker image, execute the following command:

```
  $ docker build -t iota-swarm-node .
```

## Publish to Docker Hub

1. Log in to Docker Cloud using the docker login command.

```
  $ docker login
```

2. Tag your image using `docker tag`.

```
  $ docker tag iota-swarm-node DOCKER_ID_USER/iota-swarm-node
```

3. Push your image to Docker Hub using `docker push`.

```
  $ docker push DOCKER_ID_USER/iota-swarm-node
```