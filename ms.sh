#!/bin/bash

# minimun setup of vim with rails-related stuff
# to be run with 
# bash <(curl https://raw.githubusercontent.com/vova/vova.github.io/master/ms.sh)
# or (with url shortened) 
# bash <(curl -L git.io/vvim)

sudo gem install ripper-tags
sudo apt-get install silversearcher-ag
[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.old || echo ".vimrc Not found"
wget https://raw.githubusercontent.com/vova/vova.github.io/master/.vimrc -O ~/.vimrc
echo "alias be='bundle exec'" >> ~/.bashrc
echo "alias e='vim'" >> ~/.bashrc
echo "alias eg='vim Gemfile'" >> ~/.bashrc
echo "alias f='find . -name'" >> ~/.bashrc
echo "alias gg='ripper-tags -R --exclude=.git --exclude=vendor .'" >> ~/.bashrc
echo "alias ivm='vim'" >> ~/.bashrc
echo "alias rc='vim ~/.bashrc && source ~/.bashrc'" >> ~/.bashrc
echo "alias tf='tail -f log/*'" >> ~/.bashrc
echo "export RAILS_ENV=" >> ~/.bashrc
vim ~/.bashrc && source ~/.bashrc
