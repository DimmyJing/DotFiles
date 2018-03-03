# DotFiles dot files 
## installation instructions: 
+ 'git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim' in command line 
+ ':PluginInstall' in vim 
+ './install.py --clang-completer' in YouCompleteMe directory
+ if using arch linux, use './install.py --clang-completer --system-clang' if clang exists. use 'pacman -S clang' if it doesn't
+ if using neovim, go to ~/.config/nvim/init.vim and put
  `set runtimepath^=~/.vim runtimepath+=~/.vim/after
  let &packpath = &runtimepath
  source ~/.vimrc` into it
