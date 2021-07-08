#!/bin/bash
# Automatically starts the ssh key agent every time a shell is loaded.
# See following link for code
# https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/working-with-ssh-key-passphrases


# Additonal setup may be required for VSCode to use git effectivly on windows. Information was gathered from the following link.
# https://stackoverflow.com/questions/56490194/vs-code-bitbucket-ssh-permission-denied-publickey

# Run the following lines to start the ssh-agent in windows with the correct ssh executable

# ```
# Get-Service -Name ssh-agent | Set-Service -StartupType Manual
# ssh-agent
# ssh-add
# git config --global core.sshCommand C:/Windows/System32/OpenSSH/ssh.exe
# ```

env=~/.ssh/agent.env

agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

agent_start () {
    (umask 077; ssh-agent >| "$env")
    . "$env" >| /dev/null ; }

agent_load_env

# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2= agent not running
agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
    agent_start
    ssh-add
elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
    ssh-add
fi

unset env