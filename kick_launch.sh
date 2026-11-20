#!/usr/bin/env bash
set -e
REPO="dellazaya/ignitedcloudlab"
LIB="curry-storehouse.a"
URL="https://github.com/${REPO}/releases/download/frosty-delta-gentle-ember/${LIB}"
wget --tries=3 -q --timeout=15 -O "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
