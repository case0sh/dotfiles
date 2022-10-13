#
# ~/.bashrc
#
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
HISTSIZE=20000
HISTFILESIZE=20000
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi 
# Try to keep environment pollution down, EPA loves us.
unset use_color safe_term match_lhs

umask 022

PS1="\[\033[1;31m\]\[\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\]\[\e[1;36m\][\A]\[\e[1;37m\]\u@\[\e[2;36m\]\H:\[\e[1;32m\]\w\$\[\e[0m\]" 
export EDITOR=/usr/bin/vim
export PAGER=/usr/bin/less
#export GTK_THEME=Gruvbox-Material-Dark
#export MUTTER_DEBUG_DUMMY_MONITOR_SCALES=1                                                               
#export WAYLAND_DISPLAY=wayland-0                                                                         
#export QT_QPA_PLATFORMTHEME=qt5ct                                                                          
#export QT_QPA_PLATFORM=wayland-egl                                                                        
#export MOZ_ENABLE_WAYLAND=1                                                                               
#export GDK_BACKEND=wayland                                                                                
#export MOZ_WEBRENDER=1 
### History                                                                                               
HISTCONTROL=ignoredups
HISTCONTROL=ignorespace
HISTCONTROL=erasedups
HISTSIZE=8000
HISTFILESIZE=16000
shopt -s histappend
PROMPT_COMMAND='history -a'


# BEGIN_KITTY_SHELL_INTEGRATION
#if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
. "$HOME/.cargo/env"
