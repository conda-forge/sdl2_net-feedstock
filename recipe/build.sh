#!/bin/bash
# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./build-scripts
set -ex

mkdir build
cd build

cmake -G Ninja \
    ${CMAKE_ARGS} \
    -DBUILD_SHARED_LIBS=ON \
    -DCMAKE_BUILD_TYPE=Release \
    ..

cmake --build .
cmake --install .
