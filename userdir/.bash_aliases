extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1    ;;
            *.tar.gz)    tar xvzf $1    ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       rar x $1       ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xvf $1     ;;
            *.tbz2)      tar xvjf $1    ;;
            *.tgz)       tar xvzf $1    ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)           echo "don't know how to extract '$1'..." ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}


# Easier navigation:
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"

# Shortcuts
alias diary="vim ~/projects/diary/$(date '+%Y/%m_%B').md"
alias prj="cd ~/projects"

mkcd() { 
    mkdir "$1" && cd "$1"; 
}

alias ports='netstat -tulanp'

#List
alias ll='ls -la --color=auto'

# set interactive always
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

#FEDORA UPDATE 
alias update='sudo dnf update' 
alias upgrade='sudo dnf update && sudo dnf update upgrade' 


#Fun utilities
alias say=spd-say

#GIT 

#PHP
alias php7='/bin/php'
