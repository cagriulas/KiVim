#!/bin/bash

echo '	 
    ______ _________    ______            
	___  //_/__(_)_ |  / /__(_)______ ___ 
	__  ,<  __  /__ | / /__  /__  __ `__ \
	_  /| | _  / __ |/ / _  / _  / / / / /
	/_/ |_| /_/  _____/  /_/  /_/ /_/ /_/ 
'

# Clones Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Backups your old vimrc file
cp ~/.vimrc ~/.vimrc.backup 2>/dev/null
# Copies vimrc
cp .vimrc ~
# Installs plugins with Vundle
vim +PluginInstall +qall
