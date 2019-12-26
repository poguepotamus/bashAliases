#!/bin/bash

# constants -
CONFIG_PATH=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

# preferences -
  alias ll="ls -lF --color"
  alias lall="ls -alF --color"
  alias lal="lall"
  alias del="echo \"rm -rf\" "$1""
# git -
  alias glog='git log --oneline --decorate --graph --all'
# python -
  alias howWheel="echo 'python setup.py sdist bdist_wheel'"
  alias piping="echo 'pip freeze | xargs pip uninstall -y'"

# output -
warning() { >&2 echo -e "\e[33mWARNING\e[0m: \e[90mbashrc\e[0m: $1"; }
fatal()   { >&2 echo -e "\e[31mFATAL\e[0m: \e[90mbashrc\e[0m: $1"; }
success() { >&2 echo -e "\e[36mSUCCESS\e[0m: \e[90mbashrc\e[0m: $1"; }

# files -

# environment -
PATH="$PATH:$CONFIG_PATH/bin"

# systemrc -
  # Defining where to look for our rc files
  rcDir="$CONFIG_PATH/rcFiles"
  headers=("$HOSTNAME" "$OSTYPE")

  # For each of our headers
  for header in ${headers[@]}; do
    # Checking if our header exists
    [ -z $header ] || head=$header
    # Checking if the rc file exists, then execute it
    [ -f "$rcDir/$head" ] && . "$rcDir/$head"
  done
