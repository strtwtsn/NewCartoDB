#!/bin/bash
sudo apt-get -y update
sudo apt-get -y install build-essential zlib1g-dev libssl-dev libreadline-dev libyaml-dev git curl
curl -L https://get.rvm.io | bash -s stable
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"' >> ~/.ba$
source ~/.bashrc
rvm install 1.9.3
rvm use 1.9.3
gem install chef ruby-shadow --no-ri --no-rdoc
