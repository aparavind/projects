#! /bin/bash

# script basd on https://grpc.io/docs/languages/cpp/quickstart/ 
# date : 15th Oct 2023

yum update -y
export MY_INSTALL_DIR=$HOME/.local
mkdir -p $MY_INSTALL_DIR
export PATH="$MY_INSTALL_DIR/bin:$PATH"

## installing cmap : the yum version of cmake is only 2.8 which is insufficient.
## hence installnig from source.
## https://stackoverflow.com/a/69804395

# Install sudo, wget and openssl, which is required for building CMake
yum install sudo wget openssl-devel -y

# Install development tools
sudo yum groupinstall "Development Tools" -y

# Download, build and install cmake
wget https://cmake.org/files/v3.18/cmake-3.18.0.tar.gz
tar -xvzf cmake-3.18.0.tar.gz
cd cmake-3.18.0
./bootstrap
gmake -j 20   # skip j 10 if machine is not big
gmake install
cd ..


git clone --recurse-submodules -b v1.58.0 --depth 1 --shallow-submodules https://github.com/grpc/grpc

cd grpc
mkdir -p cmake/build
pushd cmake/build
/usr/local/bin/cmake -DgRPC_INSTALL=ON \
      -DgRPC_BUILD_TESTS=OFF \
      -DCMAKE_INSTALL_PREFIX=$MY_INSTALL_DIR \
      ../..
make -j 20
make install
popd

