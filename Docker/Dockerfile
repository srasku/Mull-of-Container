FROM mull-base:latest

ARG LLVM_VERSION=12
RUN set -ex && \
    apt-get update && \
    apt-get install -y \
        llvm-${LLVM_VERSION}

RUN set -ex && \
    cd mull && \
    mkdir build.dir && \
    cd build.dir && \
    cmake -DCMAKE_PREFIX_PATH="/usr/lib/llvm-${LLVM_VERSION}/cmake/;/usr/lib/cmake/clang-10/" .. \
    make VERBOSE=1 mull-runner-${LLVM_VERSION} && \
    make mull-tests

WORKDIR /mull
