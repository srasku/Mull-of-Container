# Building Mull in Docker

This repository is intended to test using Mull inside a Docker container.  It does not compile.

There are two `Dockerfile`s in the `Docker` directory:
- `Dockerfile`
	- This is used to build the Mull build system.  It doesn't successfully build yet.
- `Dockerfile.mull-base`
	- This is used to build all the dependencies in Mull.  This builds successfully.  You can use it to examine the development environment that has been created.

There are two scripts:
- `in-base.sh` will build and run a command inside the base image.  For example:
```
./in/base.sh find /usr/lib -name ASTTypeTraits.h
```

- `in-container.sh` will run a command inside the Mull image.  For example:
```
./in-container.sh mull-runner-12 --version
```
