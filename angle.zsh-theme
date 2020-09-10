num_dirs=0
truncated_path="%B%F{white}%$num_dirs~%f"
decoration="%F{red}❱%F{magenta}❱%F{cyan}❱%f"
PROMPT='$truncated_path $decoration '
zle_highlight=(default:bold)
KEYTIMEOUT=1

function zle-line-init {
	zle -K viins

	echo -ne "\e[6 q"  # line cursor
}

function zle-keymap-select {
    # change cursor shape in iTerm2
	case $KEYMAP in
		vicmd)		echo -ne "\e[2 q";;  # block cursor
		viins|main)	echo -ne "\e[6 q";;  # line cursor
	esac

    zle reset-prompt
    zle -R
}

zle -N zle-line-init
zle -N zle-keymap-select
