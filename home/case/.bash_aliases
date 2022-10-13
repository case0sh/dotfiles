# some more ls aliases
alias ls='ls --color=auto'  
#alias vim='nvim'  
alias l='ls -CF'
alias ll='ls -lahF'
alias la='ls -aF'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -Iv'
alias r='ranger'
alias RX='sync;echo 3 > /proc/sys/vm/drop_caches'
alias CR='rm /root/.bash_history && history -c'
alias tree='exa --all --tree --level=2 --long'

#ssh tools
#alias ssh="kitty +kitten ssh"
alias sshh="sshrc"
alias sshr="ssh -l root"

#alias for multiplex
alias tm="tmux new -t ${USER}"
alias screen="screen -xR  ${USER}"

# alias for other
alias uu='sudo apt update && sudo apt upgrade -y'
alias gource='gource --seconds-per-day 0.04 --file-idle-time 0 --date-format "%B %Y" --hide filenames -f'
alias nogame="pgrep -l steam  && echo 'steam in progress' || echo 'steamis not active now'"
alias nmap='sudo grc nmap' 
