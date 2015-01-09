#.bash_alliases
# Author: Joshua
# Store user alliases for shell here
#
# Misc Aliases
alias py='python'
alias batt='acpi -b'
# Directory Nav Aliases
alias cd~='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cp='cp -i'            # Safe copy with prompt
alias rm='rm -i'            # Safe remove with prompt
# ls aliases
alias ls='ls --color=always'
alias ll='ls -al --color=always'
alias l='ls -CF --color=always'
alias la='ls -a --color=always'
alias less='less -R'  # Fixes color in pipes to less
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# Networking
alias pingc='ping -c 10'
alias pingg='ping -c 10 www.google.com'
#
# SSH AGENT SHELL
# Starts a bash session with an unlocked private key
#alias sshbk="ssh-agent bash -c 'ssh-add' < /dev/null"
# Alias to HTPC
alias server='ssh -p 1121 joshua@10.0.0.71'
#
alias vim='vim -T xterm-256color'
alias srchome='source ~/.bashrc'
