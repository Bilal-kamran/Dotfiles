#!/usr/bin/bash
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
. "$HOME/.cargo/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export LUA_PATH="/usr/share/lua/5.1/?.lua;;"
export LUA_CPATH="/usr/lib64/lua/5.1/?.so;;"

alias PR="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/"
alias PR-C="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/C\ PROJECTS/"
alias PR-C_s="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/C\ PROJECTS/Small C Projects/"
alias PR-C_c="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/C\ PROJECTS/Calculator_Project/"
alias PR-L="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/LUA\ PROJECTS/"
alias PR-L_l="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/LUA\ PROJECTS/LUA-LOVE2D/"
alias PR-WD="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/WEB\ DEVELOPMENT/"
alias PR-WD_p="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/WEB\ DEVELOPMENT/PORTFOLIO/"
alias PR-WD_f="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/WEB\ DEVELOPMENT/FRONTEND/"
alias PR-Asm="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/ASSEMBLY\ PROJECTS/"
alias cls="clear"
