#!/bin/sh

# prepare clean '.config/chromium'
rm -rf $HOME/.config/chromium
mkdir -p $HOME/.config/chromium
cp /usr/local/share/monino/chromium-config/* $HOME/.config/chromium

# start an infinite loop of trying to maximize the chromium-browser window
/usr/local/share/monino/browser-chromium-maximize.sh &

# start chromium-browser
exec chromium-browser %u \
        --disable-plugins \
        --disable-translate \
        --start-maximized \
        --kiosk \
        --incognito \
        "$1"
