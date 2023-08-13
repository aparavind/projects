#! /bin/bash

## clone this repository.

## define parameters
export cwd=`dirname $0`
export MY_INSTALL_DIR=$HOME/.local
mkdir -p $MY_INSTALL_DIR
export PATH="$MY_INSTALL_DIR/bin:$PATH"

## install modules
yum groupinstall "Development Tools"
yum install gcc cmake autoconf libtool pkg-config

## checkout grpc code
git clone --recurse-submodules -b v1.56.0 --depth 1 --shallow-submodules https://github.com/grpc/grpc

## use install
cd grpc
mkdir -p cmake/build
pushd cmake/build
cmake -DgRPC_INSTALL=ON \
    -DgRPC_BUILD_TESTS=OFF \
    -DCMAKE_INSTALL_PREFIX=$MY_INSTALL_DIR \
    ../..
make -j 8
make install
popd