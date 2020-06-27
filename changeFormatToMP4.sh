#!/bin/sh
echo -e "\033[1;32mThis script can Change any format video file to mp4 H.264 yuv420p"
echo -e "\033[0;33mMade by ZShin"
echo -e "\033[0;33mhttps://www.zshin.com"
echo "--------------------"
echo -e -n "\033[0;39m"
echo -e -n "\033[1;34mvideo file path(MacOS can drop file to this window):\033[0;39m"
read PATH
/usr/local/bin/ffmpeg -i "$PATH"
#echo -e -n "\033[1;33mSource video "
#/usr/local/bin/ffprobe  -v error -select_streams v:0 -show_entries stream=bit_rate -of default=noprint_wrappers=1 "$PATH"
echo -e -n "\033[1;34mNew video bit rate(KB/s)(Recommand same with source video bit rate):\033[0;39m"
read BITRATE
/usr/local/bin/ffmpeg -i "$PATH" -pix_fmt yuv420p  -c:v h264_videotoolbox -b:v "${BITRATE}k" "${PATH}.mp4"
