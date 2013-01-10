#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTSIZE=10000
export HISTFILESIZE=10000

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias lynx='lynx -cfg ~/.lynx.cfg'

alias shutdown='sudo shutdown'
alias reboot='sudo reboot'

# Colorize prompt
PS1='\[\e[0;32m\][\u\e[m\]\e[0;31m\]@\e[m\]\e[0;35m\]\h\e[m\] \[\e[1;34m\]\W\[\e[m\]\[\e[0;32m\]]\[\e[m\]\[\e[1;32m\]\$\[\e[m\] '

# Enable tab complete for sudo
complete -cf sudo

export EDITOR="gvim"

export SUDO_EDITOR="/usr/bin/vim -p -X"

export TERM=rxvt-256color

# Add git completion
source ~/.git-completion.bash

# VI style command line editing.
set -o vi

PATH=$PATH:~/.gem/ruby/1.9.1/bin:~/bin:/opt/android-sdk/platform-tools

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

PATH=$PATH:$HOME/.gem/ruby/1.9.1/bin

export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
