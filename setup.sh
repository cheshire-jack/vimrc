#!/bin/bash

echo "Getting vimrc from github"
wget https://raw.githubusercontent.com/cheshire-jack/vimrc/master/vimrc

echo "Copying to ~/.vimrc" 
mv ./vimrc ~/.vimrc 

echo "Setting up Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Setting up Gef"
wget -O ~/.gdbinit-gef.py -q https://github.com/hugsy/gef/raw/master/gef.py
echo source ~/.gdbinit-gef.py >> ~/.gdbinit

echo "setting up dependencies of Gef"
sudo apt install cmake
pip3 install keystone-engine
pip3 install capstone
pip3 install ropper


