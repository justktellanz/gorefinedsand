#!/usr/bin/env bash
set -e
TAG="gentle-harbor-frosty-garden"
LIB="alpha-gap.a"
URL="https://github.com/justktellanz/gorefinedsand/releases/download/${TAG}/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -o app -pthread -std=c++17 -O2 main.cpp "$LIB" && ./app
