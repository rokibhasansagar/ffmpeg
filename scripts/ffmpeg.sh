#!/bin/bash


# Download link for the latest ffmpeg version.
url="http://ffmpeg.org/releases/ffmpeg-4.4.tar.bz2"
# Finding out the name of the directory
dirname=$(basename "$url" .tar.bz2)

# Download of the latest ffmpeg version
cd "$HOME/ffmpeg/downloads" || exit
wget "$url"
# Extraction of the latest ffmpeg package
tar xjvf ffmpeg-*.tar.bz2
# Removal of the tar.bz2 package
rm ffmpeg-*.tar.bz2
cd "$dirname" || exit

        #--extra-cflags="-fPIC -m64 -I$HOME/ffmpeg_build/include" \
        #--extra-cflags="-fPIC" \
# FFMPEG Compilation
./configure \
        --pkg-config-flags="--static" \
        --extra-libs="-lpthread -lm -lz" \
        --toolchain=hardened \
        --prefix="/opt/ffmpeg" \
        --enable-gpl \
        --enable-nonfree \
        --enable-version3 \
        --disable-debug \
        --disable-doc \
        --disable-htmlpages \
        --disable-podpages \
        --enable-stripping \
        --enable-libass \
        --enable-libfontconfig \
        --enable-libfreetype \
       	--enable-libfribidi \
        --enable-libgme \
        --enable-libgsm \
        --enable-librubberband \
        --enable-libshine \
        --enable-libsnappy \
        --enable-libssh \
        --enable-libtwolame \
        --enable-libwavpack \
        --enable-libzvbi \
        --enable-openal \
        --enable-sdl2 \
        --enable-libdrm \
        --enable-frei0r \
        --enable-ladspa \
        --enable-libpulse \
        --enable-libsoxr \
        --enable-libspeex \
        --enable-avfilter \
        --enable-postproc \
        --enable-pthreads \
        --enable-libfdk-aac \
        --enable-libmp3lame \
        --enable-libopus \
        --enable-libtheora \
        --enable-libvorbis \
        --enable-libvpx \
        --enable-libx264 \
        --enable-libx265 \
        --disable-ffplay \
        --disable-ffprobe \
        --enable-libopenjpeg \
        --enable-libwebp \
        --enable-libxvid \
        --enable-libvidstab \
        --enable-zlib \
        --enable-openssl \
      	--enable-pic \
        --enable-libzimg
        # --enable-shared \
        # --enable-libvmaf
        # --enable-libopenh264 \
        # --enable-libsrt \
        # --enable-avisynth \
make -j$cpu_cnt
sudo make install
sudo make distclean
source ~/.profile
