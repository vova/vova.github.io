#!/bin/bash

# minimun setup of vim with rails-related stuff
# to be run with 
# curl https://raw.githubusercontent.com/vova/vova.github.io/master/ms.sh | bash

sudo gem install ripper-tags
sudo apt-get install silversearcher-ag
wget https://raw.githubusercontent.com/vova/vova.github.io/master/.vimrc -O ~/.vimrc
echo "alias be='bundle exec'" >> ~/.bashrc
echo "alias eg='vim Gemfile'" >> ~/.bashrc
echo "alias gg='ripper-tags -R --exclude=.git --exclude=vendor .'" >> ~/.bashrc
echo "alias ivm='vim'" >> ~/.bashrc
echo "alias rc='vim ~/.bashrc && source ~/.bashrc'" >> ~/.bashrc
echo "export RAILS_ENV=" >> ~/.bashrc
vim ~/.bashrc && source ~/.bashrc
