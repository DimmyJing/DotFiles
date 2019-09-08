alias src="cd ~/Program/src"
alias bin="cd ~/Program/bin"
alias doc="cd ~/Program/doc"
alias vi="nvim"
alias tmux="TERM=screen-256color-bce tmux"
alias pip3update='pip3 install --upgrade $(pip3 freeze | awk "{split($0, a, \"==\"); print a[1]}")'
# alias nwjs="~/TermApps/nwjs.app/Contents/MacOS/nwjs ."
# alias nwjsdebug="~/TermApps/nwjs.app/Contents/MacOS/nwjs . --remote-debugging-port=9222"
alias skim="open -a Skim"
