#!/bin/bash

export DISPLAY=:20

Xvfb :20 -screen 0 1600x900x24 &
x11vnc -ncache 10 -forever -nopw -display :20 &
mate-session

/bin/bash