#!/usr/bin/env bash

mkdir -p ~/.local/bin
cd ~/.local/bin
curl -LO https://github.com/junegunn/fzf/releases/download/0.36.0/fzf-0.36.0-linux_amd64.tar.gz
tar -xzf fzf-0.36.0-linux_amd64.tar.gz
chmod +x fzf
rm -rf fzf-0.36.0-linux_amd64.tar.gz


