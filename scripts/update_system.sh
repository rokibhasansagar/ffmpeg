#!/bin/bash

echo "Start the system update..."
sudo apt-get update -qy
sudo apt-get upgrade -qy
sudo apt dist-upgrade -y
sudo apt-get install -qy --no-install-recommends \
	autoconf \
	automake \
	build-essential \
	fonts-dejavu-core \
	fontconfig-config \
	libtool \
	pkg-config \
	texinfo \
	yasm \
	libass-dev \
	checkinstall \
	zlib1g-dev \
	libxvidcore-dev \
	libfontconfig1 \
	cmake \
        libasound2 \
	libasound2-data \
	libasound2-plugins \
	fontconfig \
	libaacs0 \
	libasyncns0 \
	libbdplus0 \
	libbs2b0 \
	libcaca0 \
	libcairo2 \
	libcroco3 \
	libcrystalhd3 \
	libdatrie1 \
	libdrm-amdgpu1 \
	libdrm-intel1 \
	libdrm-nouveau2 \
	libdrm-radeon1 \
	libfftw3-double3 \
	libflac8 \
	libflite1 \
	libgbm1 \
	libgme0 \
	libgomp1 \
	libgraphite2-3 \
	libgsm1 \
	libharfbuzz0b \
	libjbig0 \
	libjpeg-turbo8 \
	libjpeg8 \
	libmp3lame0 \
	libogg0 \
	libopenal-dev \
	libopenjp2-7-dev \
	libwebp-dev \
	libzvbi-dev \
	libopus0 \
	libpango-1.0-0 \
	libpangocairo-1.0-0 \
	libpangoft2-1.0-0 \
	libpciaccess0 \
	libpgm-5.2-0 \
	libpixman-1-0 \
	libpulse0 \
	libdrm-dev \
	libfdk-aac-dev \
	libgme-dev \
	libgsm1-dev \
	libmp3lame-dev \
	libopus-dev \
	libpulse-dev \
	librubberband-dev \
	libshine-dev \
	libsnappy-dev \
	libssh-dev \
	libtheora-dev \
	libtwolame-dev \
	libwavpack-dev \
	libraw1394-11 \
	librsvg2-2 \
	libsamplerate0 \
	libsdl2-dev \
	libsensors4 \
	libshine3 \
	libsndfile1 \
	libsoxr0 \
	libspeex1 \
	libssh-gcrypt-4 \
	libthai-data \
	libthai0 \
	libtheora0 \
	libtiff5 \
	libtwolame0 \
	libvdpau1 \
	libvorbis0a \
	libvorbisenc2 \
	libvorbisfile3 \
	libwavpack1 \
	libwayland-client0 \
	libwayland-cursor0 \
	libwayland-server0 \
	libx11-xcb1 \
	libxcb-dri2-0 \
	libxcb-dri3-0 \
	libxcb-present0 \
	libxcb-render0 \
	libxcb-shape0 \
	libxcb-shm0 \
	libxcb-sync1 \
	libxcb-xfixes0 \
	libxcursor1 \
	libxdamage1 \
	libxfixes3 \
	libxi6 \
	libxinerama1 \
	libxkbcommon0 \
	libxrandr2 \
	libxrender1 \
	libxshmfence1 \
	libxss1 \
	libxv1 \
	libxvidcore4 \
	libxxf86vm1 \
	libzmq5 \
	libzvbi-common \
	libzvbi0 \
	x11-common \
	alsa-utils \
	libbluray-bdj \
	libfftw3-bin \
	libfftw3-dev \
	libportaudio2 \
	opus-tools \
	frei0r-plugins-dev \
	tcl \
	pulseaudio \
	librsvg2-bin \
	lm-sensors \
	sndiod \
	speex \
	libvdpau-va-gl1 \
	ladspa-sdk \
	libsoxr-dev \
	libspeex-dev \
	python-dev \
	python-pip \
	python-tk \
	git-core \
	libsdl1.2-dev \
	libvdpau-dev \
	libvorbis-dev \
	libx11-dev \
	libxext-dev \
	libxfixes-dev \
	texi2html \
	gcc \
	libogg-dev \
	libxcb1-dev \
	libgpac-dev \
	x265 \
	libssl-dev -y
	# compile from head, apt packages are very old 2+years
	# libx264-dev \
	# libvpx-dev \
	# libx265-dev \
	# nasm \
sudo apt clean -qy
sudo apt autoremove -qy
echo "End of the system update"
