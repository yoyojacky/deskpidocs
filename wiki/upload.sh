#!/bin/bash 

rm -rf ./site
mkdocs build 
sudo cp -Rvf ./site/* ../../deskpi-team.github.io/ 
echo -e "\e[36;40mJob done!\e[0m"
