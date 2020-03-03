export ZSH="/Users/jimmyding/.oh-my-zsh"
# Custom theme
ZSH_THEME="angle"
# Plugins
plugins=(git common-aliases pip python vi-mode)
# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh
# Set language
export LANG=en_US.UTF-8
# Set default editor
export EDITOR='nvim'
# Aliases
alias pip3update='pip3 install --upgrade $(pip3 freeze | sed "s/\(.*\)==.*/\1/g")'
alias killfacetime="killall -kill FaceTimeNotificationCenterService"
alias src="cd ~/Program/src"
alias doc="cd ~/Program/doc"
alias vi="nvim"
# PATH exports
export PATH="$PATH:/Library/Developer/CommandLineTools/usr/bin"
export PATH="~/TermApps/bin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
# Call neofetch
neofetch
# Initialize auto completion
compinit
