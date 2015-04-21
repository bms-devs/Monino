#!/bin/sh

# prepare clean '.config/chromium'
rm -rf $HOME/.config/chromium
mkdir -p $HOME/.config/chromium
cp /usr/local/share/monino/chromium-config/* $HOME/.config/chromium

# start chromium-browser
exec chromium-browser %u \
        --disable-plugins \
        --disable-translate \
        --remote-debugging-port=9222 \
        --start-maximized \
        --kiosk \
        --incognito \
        "$1"
