#!/usr/bin/bash

## from https://blog.csdn.net/bleachswh/article/details/73896348

set -e
set -x
apt-get update                              
apt-get install python-pip                  
pip install --upgrade pip                   
apt-get install git
pip install git+https://github.com/shadowsocks/shadowsocks.git@master 
apt-get install build-essential
wget https://github.com/jedisct1/libsodium/releases/download/1.0.8/libsodium-1.0.8.tar.gz
tar xf libsodium-1.0.8.tar.gz && cd libsodium-1.0.8
./configure && make -j2
make install
ldconfig
#echo '{"server":"::", "server_port":8388, "local_address": "127.0.0.1", "local_port":1080, "password":"yourpassword", "timeout":300, "method":"chacha20", "fast_open": false }' > /etc/shadowsocks.json 
#ssserver -c /etc/shadowsocks.json -d start
#ssserver -c /etc/shadowsocks.json -d stop
