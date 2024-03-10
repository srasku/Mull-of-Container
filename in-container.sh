#!/bin/sh -e

IMAGE=mull:latest
docker build -f Docker/Dockerfile -t ${IMAGE} Docker
docker run -it -v "$(pwd):/home/develop" --rm ${IMAGE} "$@"
