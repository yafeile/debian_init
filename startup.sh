#!/bin/bash
apt-get install fcitx ttf-wqy-zenhei git ffmpeg libqt5webenginecore5 build-essential python-dev python-xlib -y
apt-get install linux-headers-4.9.0-13-amd64 -y
apt-get install gvfs-bin python3-gi gir1.2-appindicator3-0.1 gir1.2-notify-0.7
journalctl --rotate
journalctl --vacuum-time=1day
wget https://www.jianguoyun.com/static/exe/installer/nutstore_linux_dist_x64.tar.gz -O /tmp/nutstore_bin.tar.gz
mkdir -p ~/.nutstore/dist && tar zxf /tmp/nutstore_bin.tar.gz -C ~/.nutstore/dist
~/.nutstore/dist/bin/install_core.sh
dpkg -i /backup/software/libpng12-0_1.2.50-2+deb8u3_amd64.deb
dpkg -i /backup/software/wps-office_10.1.0.5444~a20_amd64.deb
dpkg -i /backup/software/wiznote_2.5.1-2_amd64.deb
tar xvf /backup/software/sublime_text_build_4107_x64.tar.xz -C /opt