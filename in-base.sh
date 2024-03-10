#!/bin/sh -e

IMAGE=mull-base:latest
docker build -f Docker/Dockerfile.mull-base -t ${IMAGE} Docker
docker run -it -v "$(pwd):/home/develop" --rm ${IMAGE} "$@"
