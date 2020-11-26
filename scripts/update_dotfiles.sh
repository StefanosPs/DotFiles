#!/bin/bash
#
# Update src files logged in user files

files=(bash_aliases bash_logout bash_prompt bash_profile bashrc editorconfig path gitconfig gitignore_global vimrc)

#echo "Num of arguments $#"

if [ "$#" -ne 1 ] && [ "$1" != "all" ]
then
	echo "Wrong argument's run with all"
	exit 1
fi
for file in "${files[@]}"; do
	file=~/.$file
	filedest=../userdir/$file
	if [[ $file -nt $filedest ]]; then
		cp "$file" ../userdir
		echo -e "\tCopy file "$file" to ../userdir/" 
	fi
	#[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;


exit 0	
