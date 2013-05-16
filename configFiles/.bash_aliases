#.bash_alliases
#
# Store user alliases for shell here
#
alias py='python'
alias server='ssh -p 1121 joshua@10.0.0.25'
#########################################
#         Directory Nav Aliases         #
#########################################
alias la='ls -a --color=auto'
alias batt='acpi -b'
#
# Directory Nav Aliases
alias cd~='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cp='cp -i'            # Safe copy with prompt
alias rm='rm -i'            # Safe remove with prompt
#
# Ping
alias pingc='ping -c 10'
alias pingg='ping -c 10 www.google.com'
#
# SSH AGENT SHELL
alias sshbk="ssh-agent sh -c 'ssh-add < /dev/null && bash'"
#
alias vim='vim -T xterm-256color'
