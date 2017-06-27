#!/bin/bash
wget https://sourceforge.net/projects/opencvlibrary/files/opencv-unix/2.4.13/opencv-2.4.13.zip
unzip /opencv-2.4.13.zip
mkdir -p /opencv-2.4.13/build
cd /opencv-2.4.13/build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_PYTHON_SUPPORT=ON -D WITH_XINE=ON -D WITH_TBB=ON ..
make all -j2
make install && checkinstall
cd /
rm -rf opencv-2.4.13