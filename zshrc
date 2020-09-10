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
alias killfacetime="killall -kill FaceTimeNotificationCenterService"
alias src="cd ~/Program/src"
alias vi="nvim"
alias yui="yarn upgrade-interactive --latest"
alias nwjs="~/TermApps/nwjs.app/Contents/MacOS/nwjs ."
alias nwjsdebug="~/TermApps/nwjs.app/Contents/MacOS/nwjs . --remote-debugging-port=9222"
# PATH exports
export PATH="$PATH:/Library/Developer/CommandLineTools/usr/bin"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8.0_251)
# Call neofetch
neofetch --backend iterm2 --source ~/Pictures/wwy.jpg
# Initialize auto completion
compinit
