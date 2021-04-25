#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://code.videolan.org/videolan/x264.git
cd x264
./configure --enable-static --enable-pic --enable-lto --enable-strip
make -j$cpu_cnt
sudo make install
make distclean
