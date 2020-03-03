from termcolor import colored
from shutil import which
import subprocess
import platform
import sys
import pwd
import os


VIMPLUG_DIR = "~/.local/share/nvim/site/autoload/plug.vim"
VIMPLUG_REPO = ("https://raw.githubusercontent.com/junegunn/"
                "vim-plug/master/plug.vim")
BREW_LINK = ("https://raw.githubusercontent.com/"
             "Homebrew/install/master/install.sh")
ZSH_LINK = ("https://raw.githubusercontent.com/robbyrussell/"
            "oh-my-zsh/master/tools/install.sh")


def setupvim():
    call(f"curl -fLo {VIMPLUG_DIR} --create-dirs {VIMPLUG_REPO}")
    call("mkdir ~/.config")
    call("mkdir ~/.config/nvim")
    call("cp ./init.vim ~/.config/nvim/init.vim")
    call("nvim +PlugInstall +qall")


def setupzsh():
    call("cp ./angle.zsh-theme ~/.oh-my-zsh/themes")
    name = pwd.getpwuid(os.getuid()).pw_name
    call(fr'echo "export ZSH=\"/home/{name}/.oh-my-zsh\"\n'
         '$(cat .zshrc)" > ~/.zshrc')


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


def has_program(prog):
    return which(prog) is not None


def print_error(text):
    print(colored(text, "red"))


if platform.system() != "Darwin":
    print_error("Linux or Windows is not supported yet")
    sys.exit()

if not has_program("brew"):
    if validate("brew not detected. Do you want to install brew?"):
        op = f'/bin/bash -c "$(curl -fsSL {BREW_LINK})"'
        call(op)
    elif not has_program("nvim"):
        print_error("neovim must use brew")
        sys.exit()

if not has_program("nvim"):
    if validate("do you want to install neovim?"):
        call("brew install neovim")
        call("pip3 install pynvim")
        setupvim()
else:
    if validate("do you want to setup neovim?"):
        setupvim()

if not os.path.isdir("~/.oh-my-zsh"):
    if validate("do you want to setup zshell?"):
        op = f'/bin/bash -c "$(curl -fsSL {ZSH_LINK})"'
        setupzsh()
else:
    if validate("do you want to setup zshell?"):
        setupzsh()
