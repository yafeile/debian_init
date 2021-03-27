#!/bin/bash
apt-get install fcitx ttf-wqy-zenhei build-essential python-dev python-xlib -y
apt-get install linux-headers-4.9.0-13-amd64 -y
journalctl --rotate
journalctl --vacuum-time=1day
wget https://www.jianguoyun.com/static/exe/installer/nutstore_linux_dist_x64.tar.gz -O /tmp/nutstore_bin.tar.gz
mkdir -p ~/.nutstore/dist && tar zxf /tmp/nutstore_bin.tar.gz -C ~/.nutstore/dist