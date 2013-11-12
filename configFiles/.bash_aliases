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
alias ll='ls -l'
alias l='ls -CF'
alias la='ls -a --color=auto'
# Networking
alias pingc='ping -c 10'
alias pingg='ping -c 10 www.google.com'
#
# SSH AGENT SHELL
# Starts a bash session with an unlocked private key
alias sshbk="ssh-agent sh -c 'ssh-add < /dev/null && bash'"
# Alias to HTPC
alias server='ssh -p 1121 joshua@10.0.0.25'
#
alias vim='vim -T xterm-256color'
