# DotFiles dot files 
## installation instructions: 
+ 'cp .vim ~/.vim'
+ 'cp .vimrc ~/.vimrc'
+ 'git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim'
+ ':PluginInstall' in vim, might take a while
+ if using arch, use step below. './install.py --clang-completer' in directory '~/.vim/bundle/YouCompleteMe'
	+ if using arch linux, use './install.py --clang-completer --system-clang' if clang exists. use 'pacman -S clang' if it doesn't
+ if using neovim, do 'cp init.vim ~/.config/nvim/init.vim'
