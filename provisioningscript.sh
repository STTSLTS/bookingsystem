#!/bin/sh

#Installing various software needed 

sudo apt install curl -y

cd ~

curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh

sudo bash nodesource_setup.sh

sudo apt-get install -y nodejs

sudo apt-get install -y build-essential 

sudo apt-get install -y gcc g++ make

curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add 

sudo apt-get update && sudo apt-get install yarn


sudo apt-get install -y git

sudo apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev

git clone https://github.com/rbenv/rbenv.git ~/.rbenv

source ~/.bashrc

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

rbenv install 3.0.0

rbenv global 3.0.0

gem install bundler

gem install rails

sudo apt-get install -y libsqlite3-dev

#Clone project from master branch from github
git clone --branch master https://github.com/STTSLTS/bookingsystem.git Blog

cd Blog 

#Run the website
rails s

