#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/vimeo/l-smash
cd l-smash
./configure
./make
sudo make install
