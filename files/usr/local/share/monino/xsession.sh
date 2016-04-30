#!/bin/sh

# start the VNC server
x11vnc -display $DISPLAY -shared -forever -passwd raspberry &

# start the browser
/usr/local/share/monino/browser.sh
