#!/bin/bash
sudo apt update
sudo apt install apache2
sudo ufw app list

echo """Output
Available applications:
  Apache
  Apache Full
  Apache Secure
  OpenSSH
"""
sudo ufw app info "Apache Full"
echo"""
Profile: Apache Full
Title: Web Server (HTTP,HTTPS)
Description: Apache v2 is the next generation of the omnipresent Apache web
server.

Ports:
  80,443/tcp
"""
sudo ufw allow in "Apache Full"

echo """
==============
===============
================
check if your apache server is up
"""
v=$(wget -qO- ifconfig.me)
echo "visit $v"
