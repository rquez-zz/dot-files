#!/bin/bash

# Install Powerline Fonts
git clone git@github.com:powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf fonts

# Install 100 vim colorschemes from vimscripts
curl -L http://www.vim.org/scripts/download_script.php?src_id=18915 -o colors.zip
unzip colors.zip -d .vim
rm -rf colors.zip

# Install Vundle Plugin Manager
git clone git@github.com:gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
