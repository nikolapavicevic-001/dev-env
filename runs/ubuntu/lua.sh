#!/bin/bash

sudo apt install lua5.1
sudo apt install liblua5.1-dev
wget https://luarocks.org/releases/luarocks-3.11.1.tar.gz
tar zxpf luarocks-3.11.1.tar.gz
cd luarocks-3.11.1/
./configure && make && sudo make install
