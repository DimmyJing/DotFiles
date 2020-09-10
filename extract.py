#!/usr/bin/env python3
from termcolor import colored
import subprocess


def call(op):
    print(colored("CALLING: ", "green") + colored(op, "cyan"))
    return subprocess.call(op, shell=True)


def validate(prompt):
    ans = input(prompt + " (y/n) ")
    if ans.lower()[0] == "y":
        return True
    elif ans.lower()[0] == "n":
        return False
    return validate(prompt)


def print_error(text):
    print(colored(text, "red"))


if __name__ == "__main__":
    call("cp ~/.config/nvim/init.vim .")
    call("cp -r ~/.local/share/nvim/UltiSnips .")
    call("cp ~/.local/share/nvim/.ycm_extra_conf.py ycm_extra_conf.py")
    call("cp ~/.oh-my-zsh/themes/angle.zsh-theme .")
    call("cp ~/.zshrc zshrc")
    call("cp ~/.tmux.conf tmux.conf")
