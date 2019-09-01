alias src="cd ~/Program/src"
alias bin="cd ~/Program/bin"
alias doc="cd ~/Program/doc"
alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"
alias vi="nvim"
alias tmux="TERM=screen-256color-bce tmux"
alias pip3update='pip3 install --upgrade $(pip3 freeze | awk "{split($0, a, \"==\"); print a[1]}")'
alias skim="open -a Skim"
