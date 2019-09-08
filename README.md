# DotFiles dot files
## installation instructions:
+ `cp .vim ~`
+ `cp .vimrc ~`
+ `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
+ `:PluginInstall` in vim, might take a while
+ if using arch, use step below in directory '~/.vim/bundle/YouCompleteMe/'
	+ if using arch linux, use `./install.py --clang-completer --system-clang` if clang exists. use `pacman -S clang` if it doesn't
+ if using neovim, do `cp init.vim ~/.config/nvim/init.vim`
+ if using oh-my-zsh, do `cp angle.zsh-theme ~/.oh-my-zsh/themes`
+ if using oh-my-zsh, enter your username in the corresponding spot in .zshrc
+ if using oh-my-zsh, do `cp .zshrc ~`
+ execute `echo source ~/.bash_aliases >> ~/.bash_profile` if mac, `echo source ~/.bash_aliases >> ~/.bashrc` if linux
