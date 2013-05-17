#!/bin/sh
INSTALL="apt-get install -y"

$INSTALL vim;
$INSTALL git git-core;
$INSTALL screen;
$INSTALL curl;

#chrome
$INSTALL chromium-browser;

#cpp
$INSTALL g++;

#python
$INSTALL python-setuptools;
$INSTALL pylint;
$INSTALL python-mysqldb;


#ice communication
$INSTALL ice34-services ice34-slice ice34-translators;


#java
$INSTALL openjdk-7-jdk;

#mysql:need user to set mysql root password
$INSTALL mysql-server-5.5 mysql-server-core-5.5 mysql-client-core-5.5
