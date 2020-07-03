#!/bin/sh
echo This script can change  to mp4 H.264 yuv420p from any format video file.
echo -n video file path:
read PATH
/usr/local/bin/ffmpeg -i "$PATH"
#echo -e -n "\033[1;33mSource video "
#/usr/local/bin/ffprobe  -v error -select_streams v:0 -show_entries stream=bit_rate -of default=noprint_wrappers=1 "$PATH"
echo -e -n "\033[1;34mNew video bit rate(KB/s)(Recommand same with source video bit rate):\033[0;39m"
read BITRATE
/usr/local/bin/ffmpeg -i "$PATH" -pix_fmt yuv420p  -c:v h264_videotoolbox -b:v "${BITRATE}k" "${PATH}.mp4"
