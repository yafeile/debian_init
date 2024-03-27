#!/bin/bash
apt-get install fcitx ttf-wqy-zenhei sudo git ffmpeg libqt5webenginecore5 build-essential python-dev python-xlib tk-dev -y
apt-get install linux-headers-4.9.0-13-amd64 evince -y
apt-get install gvfs-bin python3-gi gir1.2-appindicator3-0.1 gir1.2-notify-0.7 libssl-dev libncurses5-dev libreadline6-dev -y
apt-get install mtp-tools libmtp9 libmtp-common libmtp-runtime gvfs-backends libzip-dev libffi-dev libbz2-dev liblzma-dev -y
journalctl --rotate
journalctl --vacuum-time=1day
wget https://www.jianguoyun.com/static/exe/installer/nutstore_linux_dist_x64.tar.gz -O /tmp/nutstore_bin.tar.gz
mkdir -p ~/.nutstore/dist && tar zxf /tmp/nutstore_bin.tar.gz -C ~/.nutstore/dist
~/.nutstore/dist/bin/install_core.sh
dpkg -i /backup/software/libpng12-0_1.2.50-2+deb8u3_amd64.deb
dpkg -i /backup/software/wps-office_10.1.0.5444~a20_amd64.deb
dpkg -i /backup/software/wiznote_2.5.1-2_amd64.deb
dpkg -i /backup/software/code_1.53.2-1613044664_amd64.deb
dpkg -i /backup/software/sogoupinyin_2.2.0.0108_amd64.deb
dpkg -i /backup/software/deepin-scrot_2.0-0deepin_all.deb
tar xvf /backup/software/sublime_text_build_4107_x64.tar.xz -C /opt
# nano /etc/locale.gen
sed -i "/^#.*zh_HK.UTF-8/s/^#//" /etc/locale.gen
locale-gen
# 设置en_GB UTF-8与zh_HK.UTF-8
echo LC_CTYPE=zh_HK.UTF-8 >> /etc/environment
apt-get install linux-image-4.9.0-13-amd64 linux-headers-4.9.0-13
apt-get purge linux-image-4.9.0-9-amd64 -y
tar xvf /backup/software/Python-3.8.7.tgz
cd Python-3.8.7
./configure
make -j8
make install
cd .. && rm -rf Python-3.8.7