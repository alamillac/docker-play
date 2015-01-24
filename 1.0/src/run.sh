#!/bin/bash

if [ -n "$WGET_ZIP_APP" ]
then
    cd /tmp/ &&
    wget --no-check-certificate "$WGET_ZIP_APP" -O temp.zip &&
    unzip -o temp.zip -d /opt/play-app &&
    rm temp.zip
else
    [ -n "$GIT_APP" ] && git clone "$GIT_APP" /opt/play-app || { cd /opt/play-app && git pull ; }
fi

[ $? -eq 0 ] || exit 1

if [ -n "$DEBUG_MODE" ]
then
    supervisord &&
    supervisorctl tail -f app
else
    exec supervisord -n
fi
