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


# User specific aliases and functions
if [ -f  ~/.bash_profile ]; then
        source ~/.bash_profile
fi

