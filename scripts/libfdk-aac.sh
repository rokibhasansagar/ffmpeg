#!/bin/bash

#mkdir $HOME/install
cd $HOME/ffmpeg/downloads/
git clone https://github.com/mstorsjo/fdk-aac.git -b v2.0.1
cd fdk-aac
./autogen.sh
./configure --enable-static --enable-pic
make -j$cpu_cnt
sudo make install
make distclean
sudo ldconfig
