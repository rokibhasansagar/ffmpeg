#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/netwide-assembler/nasm -b nasm-2.15.05
cd nasm
sh autogen.sh
sh configure --enable-lto
make -j$cpu_cnt
make strip
make manpages
sudo make install
