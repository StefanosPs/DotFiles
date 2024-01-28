# .bashrc
#
if [ -z "$HOME" ]
then
     export HOME=~
fi
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc



# User specific aliases and functions
if [ -f  ~/.bash_profile ]; then
        source ~/.bash_profile
fi


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

