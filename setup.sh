#!/bin/bash
EAFTOS_PATH=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

# Some mild error checking
if [ ! -f "$HOME"/.eaftos/bashrc ]; then
	echo "ERROR: Must place custom bash in $HOME/.eaftos/bashrc for setup script to work"
	exit
fi

# Collecting information that we plan to write to the file
runCommandsFile="$HOME/.bashrc"
# This is just a method of storing the following text, save the leading whitespace, to a variable. The following lines (before EOM), are being stored in a variable called `VAR`.
read -r -d '' VAR <<- EOM
	# Custom bash file's main file
	. '$HOME/.eaftos/bashrc'
EOM

# Executing our install scripts to configure some packages
. "$HOME"/.eaftos/config/install.sh

# Writing to rc file if commands aren't there
grep "$VAR" $runCommandsFile >> /dev/null
if [[ $? != 0 ]]; then # Our message is not in the file, as grep did not find it.
  echo "" >> $runCommandsFile
  echo "$VAR" >> $runCommandsFile
fi
