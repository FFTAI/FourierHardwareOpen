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
 192.168.3.32:9595/base/fourier_hardware bash
