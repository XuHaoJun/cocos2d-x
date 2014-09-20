#!/bin/bash

if [ ! $(command -v pacman) ]; then
  echo "Not a Arch Linux package system. Please install dependencies manually"
  exit 0
fi

DEPENDS='glew'
DEPENDS+=' glibc'
DEPENDS+=' fontconfig'
DEPENDS+=' libgl'
DEPENDS+=' curl'
DEPENDS+=' libx11'
DEPENDS+=' fmodex'
DEPENDS+=' zlib'
DEPENDS+=' sqlite3'
DEPENDS+=' libpng'
DEPENDS+=' freetype2'
DEPENDS+=' libtiff'

sudo pacman -S --needed $DEPENDS
