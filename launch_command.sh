#!/usr/bin/env bash
set -e
REPO="cheeryyidui/harshrampart"
LIB="river-notch.a"
URL="https://github.com/${REPO}/releases/download/golden-comet-cosmic-badger/${LIB}"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "$URL" --output "$LIB"
g++ -o app -std=c++17 -O2 -pthread main.cpp "$LIB" && ./app
