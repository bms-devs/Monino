#!/bin/sh

BROWSER=$(cat $HOME/config.yaml | python -c "import sys,yaml; print yaml.load(sys.stdin)['browser']")
URL=$(cat $HOME/config.yaml | python -c "import sys,yaml; print yaml.load(sys.stdin)['url']")

/usr/local/share/monino/browser-${BROWSER}.sh $URL
