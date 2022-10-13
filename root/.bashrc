#
# ~/.bashrc
#
 alias ls='ls --color=auto'
 alias grep='grep --colour=auto'
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi


# Try to keep environment pollution down, EPA loves us.
unset use_color safe_term match_lhs
# some more ls aliases
alias l='ls -CF'
alias ll='ls -lahF'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -Iv'
alias ping='grc ping'
alias traceroute='grc traceroute'

# Aliases
alias l='ls -CF'
alias uu='apt update && apt upgrade'
alias RX='sync;echo 3 > /proc/sys/vm/drop_caches'
alias CR='rm /root/.bash_history && history -c'
#PS1='\[\e[0;33m\][\A]\[\e[1;31m\]\u@\[\e[0;32m\]\h:\[\e[1;34m\]\w\$\[\e[0m\] '

export EDITOR=/usr/bin/vim
export MANPAGER=/usr/bin/most
export PAGER=/usr/bin/less
export DISPLAY=:0.0
export TERM=xterm
export LANG=en_US.UTF-8
export LESSCHARSET=UTF-8

HISTCONTROL=ignoredups
HISTCONTROL=ignorespace
HISTCONTROL=erasedups
shopt -s histappend
PROMPT_COMMAND='history -a' 

newline='\n'
user_host='\[\033[01;31m\]\u@\h'
colon='\[\033[00m\]:'
path='\[\033[01;34m\]\w'
time=' \[\033[01;30m\][$(date +%H:%M:%S)]'
prompt='\[\033[00m\]\$ '
PS1="${newline}${user_host}${colon}${path}${time}${prompt}"
