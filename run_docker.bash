#!/bin/bash

XSOCK=/tmp/.X11-unix
xhost +local:root

docker run -it --rm \
 -e DISPLAY=$DISPLAY \
 -w /workspace \
 -v ${PWD}:/workspace \
 -v $XSOCK:$XSOCK \
 -v $HOME/.Xauthority:/root/.Xauthority \
 --privileged \
 --net=host \
 --name fourier_hardware \
 fourier_hardware:v2.2 bash
