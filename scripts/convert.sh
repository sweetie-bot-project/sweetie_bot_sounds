#!/bin/bash

# Recommended ffmpeg version:
#   3.4.2-2
#
# Check it with `ffmpeg -version`.

find . -iname '*.wav' -exec bash -c 'ffmpeg -i "$1" -c:a libvorbis -aq 4 "${1%.*}.ogg"' _ {} \;
