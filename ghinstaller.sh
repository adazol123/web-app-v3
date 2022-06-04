#!/bin/bash

#######################################################R###
#							  #
#	 Github CLI installer for Linux environment	  #
#							  #
######################################################R####

#fetch the repository of the installer 
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null

#update linux package maanger
sudo apt update

#install the github cli environment
sudo apt install gh

echo "GITHUB CLI Installation Success!"

