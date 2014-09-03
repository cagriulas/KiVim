    ______ _________    ______            
	___  //_/__(_)_ |  / /__(_)______ ___ 
	__  ,<  __  /__ | / /__  /__  __ `__ \
	_  /| | _  / __ |/ / _  / _  / / / / /
	/_/ |_| /_/  _____/  /_/  /_/ /_/ /_/ 

## About

KiVim a plugin combination for Vim. It means 'my kiwi' in Turkish. These plugins were put together for Python Development.

Importent: This project has not finished yet.



## Ingredients

__Plugin Manager__

[Vundle][0]


__Debugging__

This has not activated yet. Just check these plugins before me.

[vim-debug][1]
[vdebug][2]


__Finding__

[ctrlp.vim][3]


__Buffer__

[minibufexpl.vim][4]


__Color Theme__

[molokai][5]


__Folder Navigator__

[nerdtree][6]


__Syntax Checker__

Ladies and Gentlemen this is Syntastic. This plugin checks your code for PEP8 compatibility. If you want to change this to another language, check this out.
[syntastic][7]


__Class Browser__

[tagbar][8]


__Commenter__

[nerdcommenter][9]


__Status Bar__

[vim-airline][10]


__Auto Completion__

This plugin brings Vim to autocomplete Python statements. If you're not use KiVim for Python Development, use another autocompletion plugin instead of this.
[jedi-vim][11]

[delimitMate][12]

[supertab][13]


## Installation

__On GNU/Linux__

Run install.sh

If you don't have pip, install it. Package name is python-pip almost all distro.

For Syntastic install flake8
```
$ pip install --user flake8
```
This will install flake8 to ~.local/ . We decided to install packages to home which are not from our distro's repo. But you can install it globally yourself with this.

```
# pip install flake8
```

If you want to use tagbar plugin, you must install exuberant-ctags.

I have no idea how to install this on other Operating systems.


[0]: https://github.com/gmarik/Vundle.vim
[1]: https://github.com/jaredly/vim-debug
[2]: https://github.com/joonty/vdebug.git
[3]: https://github.com/kien/ctrlp.vim
[4]: https://github.com/fholgado/minibufexpl.vim
[5]: https://github.com/tomasr/molokai
[6]: https://github.com/scrooloose/nerdtree
[7]: https://github.com/scrooloose/syntastic
[8]: https://github.com/majutsushi/tagbar
[9]: https://github.com/scrooloose/nerdcommenter
[10]: https://github.com/bling/vim-airline
[11]: https://github.com/davidhalter/jedi-vim
[12]: https://github.com/Raimondi/delimitMate
[13]: https://github.com/ervandew/supertab
