#!/bin/bash

#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\] "
export PS1="\[\033[33;1m\]\w\[\033[m\] "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000000
HISTFILESIZE=20000000

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# Standard aliases
alias ls='ls -G'
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -l'
alias grep='grep --color=always'
alias fgrep='fgrep --color=always'
alias egrep='egrep --color=always'
alias git-lg='git log --pretty=oneline'
alias git-all='git add . && git commit'
alias sshp='ssh-keygen -f ~/.ssh/known_hosts -R'


# Environment variables
alias ev-path-declaration='sudo vim /etc/launchd.conf'
alias ev-path-loading='sudo vim /etc/paths'

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
ulimit -n 1024

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Bash auto-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
     . `brew --prefix`/etc/bash_completion
fi
