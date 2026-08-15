#!/usr/bin/env bash
set -e

cd "$(dirname "$0")"

cmake -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build -j

./build/physicsEngine
