#!/bin/bash

### zimg (for ffmpeg)

cd $HOME/ffmpeg/downloads
git clone https://github.com/sekrit-twc/zimg
cd zimg
sh autogen.sh
sh configure 
make -j$cpu_cnt
sudo make install
