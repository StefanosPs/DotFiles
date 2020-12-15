#!/bin/bash
#
# Update logged in user files from src files

files=(bash_aliases bash_logout bash_prompt bash_profile bashrc editorconfig path gitconfig gitignore_global)

echo "num of arguments $#"

for file in "${files[@]}"; do
        filedest=~/$file
	file=../userdir/.$file
	if [[ $file -nt $filedest ]]; then
		cp "$file" ~/ 
		echo -e "\tCopy file "$file" to "$filedest" " 
	fi
	#[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;


mkdir -p ~/.vim/backups
mkdir -p ~/.vim/swaps

if [ ! [ -a ~/.vim/plugins.vim] ];then
	#echo "file does not exist"
	cp ../userdir/.vim/plugins.vim ~/.vim/plugins.vim
	mkdir -p ~/.vim/bundle
	git  -C ~/.vim/bundle clone https://github.com/VundleVim/Vundle.vim.git
	vim -c ':PluginInstall'
if


exit 0	
