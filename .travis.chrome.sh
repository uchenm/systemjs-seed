#!/bin/bash

# Holy shit batman! https://github.com/travis-ci/travis-ci/issues/938

sudo apt-get install -y python-software-properties
sudo apt-add-repository "deb http://dl.google.com/linux/chrome/deb/ stable main"
sudo sed -i s/deb-src.*google.*//g /etc/apt/sources.list
wget -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get update -qq
sudo apt-get install -y chromium-browser google-chrome-stable

sudo chmod 1777 /dev/shm
export DISPLAY=:99.0
sh -e /etc/init.d/xvfb start
