#!/bin/bash
if [ "${1##*.}" = "mov" ]; then
    NOW_TIME=`date "+%m%d%H%M%S"`
    ffmpeg -i ${1} ~/Desktop/${NOW_TIME}.mp4
    mv ${1} ~/Movies/
fi

