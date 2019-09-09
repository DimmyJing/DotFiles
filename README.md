# DotFiles dot files
## installation instructions:
+ `cp .vim ~`
+ `cp .vimrc ~`
+ `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
+ `:PluginInstall` in vim, might take a while
+ Execute `./install.py --clang-completer` in directory '~/.vim/bundle/YouCompleteMe/'
+ to install neovim, execute `brew install neovim`
+ if using neovim, do `cp init.vim ~/.config/nvim/init.vim`
+ to install oh-my-zsh, execute `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`. (Trust me I don't think it is a virus)
+ if using oh-my-zsh, do `cp angle.zsh-theme ~/.oh-my-zsh/themes`
+ if using oh-my-zsh, enter your username in the corresponding spot in .zshrc
+ if using oh-my-zsh, do `cp .zshrc ~`
+ execute `echo source ~/.bash_aliases >> ~/.bash_profile` if mac, `echo source ~/.bash_aliases >> ~/.bashrc` if linux
+ import profile.json using iTerm
