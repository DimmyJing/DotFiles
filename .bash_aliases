alias src="cd ~/Program/src"
alias bin="cd ~/Program/bin"
alias doc="cd ~/Program/doc"
alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"
alias vi="nvim"
alias tmux="TERM=screen-256color-bce tmux"
alias pip3update='sudo -H pip3 install --upgrade $(pip3 freeze | awk "{split($0, a, \"==\"); print a[1]}")'
alias emacs="/usr/local/Cellar/emacs/26.1_1/bin/emacs"
