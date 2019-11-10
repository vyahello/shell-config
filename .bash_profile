#!/bin/bash
# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
export PYTHON_CONFIGURE_OPTS="--enable-framework"

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
alias grep='grep --color=always'
alias fgrep='fgrep --color=always'
alias egrep='egrep --color=always'
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -l'
alias vpn-up='/Users/<user>/vpn-lab/bin/vpn start'
alias vpn-down='/Users/<user>/vpn-lab/bin/vpn stop'
alias vpn-status='/Users/<user>/vpn-lab/bin/vpn status'
alias vpn-restart='/Users/<user>/vpn-lab/bin/vpn restart'
alias git-lg='git log --pretty=oneline'
alias git-amend='git commit --amend --no-edit'
alias git-master='git checkout master'
alias git-all='git add . && git commit'
alias sshp='ssh-keygen -f ~/.ssh/known_hosts -R'
alias weather='curl wttr.in/Lviv'
alias piing='ping 8.8.8.8'
alias dc_up='docker-compose up'
alias dc_down='docker-compose down'
alias dc_logs='docker-compose logs'

# MAC setting
#defaults write com.apple.finder QuitMenuItem -bool YES; killall Finder
alias hidden-files-show='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidden-files-hide='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias reload_profile='source ~/.bash_profile'

# Environment variables
alias ev-path-declaration='sudo vim /etc/launchd.conf'
alias ev-path-loading='sudo vim /etc/paths'

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
ulimit -n 1024
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
eval "$(pyenv init -)"

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# New environment setting added by TeraVM on Sat Jun 02 21:32:56 EEST 2018 1.
# The unmodified version of this file is saved in /Users/<user>/.bash_profile84368854.
# Do NOT modify these lines; they are used to uninstall.
DIVERSIFEYE=/Users/<user>/files/TVMs/Our/TeraVM
export DIVERSIFEYE
# End comments by InstallAnywhere on Sat Jun 02 21:32:56 EEST 2018 1.

# New environment setting added by TeraVM on Sat Jun 02 21:33:42 EEST 2018 1.
# The unmodified version of this file is saved in /Users/<user>/.bash_profile166353548.
# Do NOT modify these lines; they are used to uninstall.
DIVERSIFEYE=/Users/<user>/files/TVMs/Waynes/TeraVM
export DIVERSIFEYE
# End comments by InstallAnywhere on Sat Jun 02 21:33:42 EEST 2018 1.

if [ -f `brew --prefix`/etc/bash_completion ]; then 
     . `brew --prefix`/etc/bash_completion 
fi

# added by Anaconda3 5.2.0 installer
#export PATH="/anaconda3/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/<user>/.sdkman"
[[ -s "/Users/<user>/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/<user>/.sdkman/bin/sdkman-init.sh"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
