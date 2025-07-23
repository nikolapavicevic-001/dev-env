#!/usr/bin/env bash

sudo apt-get install ninja-build gettext cmake curl build-essential
cd
git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install