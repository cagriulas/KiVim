#!/bin/bash

echo '	 
    ______ _________    ______            
	___  //_/__(_)_ |  / /__(_)______ ___ 
	__  ,<  __  /__ | / /__  /__  __ `__ \
	_  /| | _  / __ |/ / _  / _  / / / / /
	/_/ |_| /_/  _____/  /_/  /_/ /_/ /_/ 
'

# Backups your old vimrc file and .vim dir
tar czf .vim_backup.tar.gz -C ~ .vimrc .vim/
rm -rf ~/.vimrc ~/.vim/
mv .vim_backup.tar.gz ~/.vim_backup.tar.gz

# Clones Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Copies vimrc
cp vimrc ~/.vimrc

# Installs plugins with Vundle
vim +PluginInstall +qall
