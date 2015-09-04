#!/usr/bin/env bash


if [ ! -f /pipinstalled ]; then
    if [ -f /src/requirements.txt ]; then
        pip install -r /src/requirements.txt
    fi
    touch /pipinstalled
fi

python "/src/$@"
