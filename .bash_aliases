# Personal projects
alias PR="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/"
alias PR-C="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/C\ PROJECTS/"
alias PR-C_s="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/C\ PROJECTS/Small\ C\ Projects/"
alias PR-C_c="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/C\ PROJECTS/Calculator_Project/"
alias PR-C_g="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/C\ PROJECTS/Small\ C\ Projects/GTK_Projects"
alias PR-L="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/LUA\ PROJECTS/"
alias PR-L_l="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/LUA\ PROJECTS/LUA-LOVE2D/"
alias PR-WD="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/WEB\ DEVELOPMENT/"
alias PR-WD_mw="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/WEB\ DEVELOPMENT/My-Website/"
alias PR-WD_prf="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/WEB\ DEVELOPMENT/Frontend-Practice/"
alias PR-Asm="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/ASSEMBLY\ PROJECTS/"
alias PR-AOC="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/ADVENT_OF_CODE/"
alias PR-AOC_c="cd $HOME/PROJECTS/PROGRAMMING_PROJECTS/ADVENT_OF_CODE/C_Lang/"

# Shell aliases

alias la='ls -Alh'                # show hidden files
alias ls='ls -aFh --color=always' # add colors and file type extensions
alias lx='ls -lXBh'               # sort by extension
alias lk='ls -lSrh'               # sort by size
alias lc='ls -ltcrh'              # sort by change time
alias lu='ls -lturh'              # sort by access time
alias lr='ls -lRh'                # recursive ls
alias lt='ls -ltrh'               # sort by date
alias lm='ls -alh |more'          # pipe through 'more'
alias lw='ls -xAh'                # wide listing format
alias ll='ls -Fls'                # long listing format
alias labc='ls -lap'              # alphabetical sort
alias lf="ls -l | egrep -v '^d'"  # files only
alias ldir="ls -l | egrep '^d'"   # directories only
alias lla='ls -Al'                # List and Hidden Files
alias las='ls -A'                 # Hidden Files
alias lls='ls -l'                 # List
alias lsg="ls -AFlh . | grep -i"       # search anything

alias home='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

alias fdg="find . | grep "

alias src="source"

alias rm="rm -i"
alias rmrf="rf -rfi"
alias cp="cp -i"
alias mv="mv -i"

# Fuzzy finder aliases
alias f="fzf"
alias fn="fzf  | xargs nvim"
alias fv="fzf  | xargs vim"
alias fp="dpkg --get-selections | awk '{print $1}' | fzf"
alias snf="snap list | fzf"
alias hf="history | fzf"
alias fnf="flatpak list | fzf"

