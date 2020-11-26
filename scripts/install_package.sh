#!/bin/bash

sudo dnf update -y 
sudo dnf install vim
sudo dnf install libxml2-devel.x86_64 sqlite-devel.x86_64
#sudo dnf groupinfo "Development Tools"
sudo dnf groupinstall "Development Tools"
sudo dnf groupinstall "PHP"