#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://bitbucket.org/multicoreware/x265_git.git -b Release_3.5
cd x265_git/build/linux
./multilib.sh
sudo make -C 8bit install
make clean
