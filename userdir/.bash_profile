# .bash_profile

# Get the aliases and functions
#if [ -f ~/.bashrc ]; then
#	. ~/.bashrc
#fi


for file in ~/.{path,bash_prompt,bash_aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# User specific environment and startup programs



