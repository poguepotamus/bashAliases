#!/bin/bash

# Some mild error checking
if [ ! -f "$HOME"/.eaftos/bashrc ]; then
	echo "ERROR: Must place custom bash in $HOME/.eaftos/bashrc for setup script to work"
	exit
fi

# Collecting information that we plan to write to the file
runCommandsFile="$HOME/.bashrc"
read -r -d '' VAR <<- EOM
	# Custom bash file's main file
	. '$HOME/.eaftos/bashrc'
EOM

# Writing to rc file
echo "" >> $runCommandsFile
echo "$VAR" >> $runCommandsFile
