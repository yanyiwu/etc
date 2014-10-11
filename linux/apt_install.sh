#!/bin/sh
INSTALL="apt-get install -y"
UPDATE="apt-get update"

$UPDATE

$INSTALL vim;
$INSTALL git git-core git-completion;
$INSTALL ssh screen tmux;
$INSTALL curl;
$INSTALL cmake;
$INSTALL clang;
$INSTALL npm;
$INSTALL zsh;

#chrome
#$INSTALL chromium-browser;

#cpp
$INSTALL g++;

#python
$INSTALL python-setuptools python-mysqldb pylint


#ice communication
#$INSTALL ice34-services ice34-slice ice34-translators;


#java
#$INSTALL openjdk-7-jdk;

#mysql:need user to set mysql root password
#$INSTALL mysql-server mysql-server-core mysql-client-core

$INSTALL ruby1.9.1-dev
gem install jekyll
