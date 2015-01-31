#.bashrc
# Author: Joshua 
#
# I've sourced all files before everything because of dependencies such as the
# git prompt requires "git-prompt".

# fileDEBUG: on = non-zero / off = 0
#fileDEBUG="0"
fileDEBUG="1"

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
elif [  "$fileDEBUG" != "0" ]; then
	echo ".bash_aliases is missing for $USER"
fi
# Allows for git functions to be included in prompt, must be sourced 
# before prompt is set.
if [ -f ~/git-prompt.sh ]; then
    . ~/git-prompt.sh
elif [  "$fileDEBUG" != "0" ]; then
	echo "git-prompt.sh is missing for $USER"
fi
# Enables bash completion of git commands
if [ -f ~/git-completion.bash ]; then
    . ~/git-completion.bash
elif [  "$fileDEBUG" != "0" ]; then
	echo "git-completion.bash is missing for $USER (git might not be installed)"
fi  
# Custom functions 
if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
elif [  "$fileDEBUG" != "0" ]; then
	echo ".bash_functions is missing for $USER"    
fi
# Source Colors List for Bash prompt
if [ -f ~/.bash_colors ]; then
	. ~/.bash_colors
elif [  "$fileDEBUG" != "0" ]; then
	echo ".bash_colors is missing for $USER"	
fi
# Enable programmable completion features
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
# Merge settings for XTerm
if [ -n ${DISPLAY} ]; then
  xrdb -merge ~/.Xresources
fi  

# <joke>If this list of source files gets any bigger I'll have to add all the
# "source" lines to another file.</joke>

# This line corrects simple spelling mistakes (e.g. "cd /Etc" corrects to 
# "cd /etc")
shopt -s cdspell
# Wrap lines on terminal resize
shopt -s checkwinsize
# Save multiline commands to one history entry
shopt -s cmdhist
# Show hidden files on wildcard matching
shopt -s dotglob
# I think this allows aliases to be expanded when used in scripts
shopt -s expand_aliases
# Expands wildcards when used as arguments in a program execution from bash
shopt -s extglob
# append to the history file, don't overwrite it
shopt -s histappend
# Auto completes hostnames from ssh "known hosts"
shopt -s hostcomplete
# Ignore case when matching wildcards (e.g. "ls F*" finds Foobar and foobar)
shopt -s nocaseglob
# Number of command lines to store in history memory for current session
HISTSIZE=10000
# Number of lines to save to file for future sessions (all of them in this case)
HISTFILESIZE=${HISTSIZE}
# History ignores commands with a leading space or any duplicate entires
HISTCONTROL=ignoreboth

# Export this prompt to root 
if [ $UID = 0 ]; then
    export PS1="$Red\u@\h \w #$Color_Off "
fi
# Export this prompt to user 
if [ $UID != 0 ]; then
    export PS1="$Green\u@\h$Cyan \w $Red\$(__git_ps1 '(%s)')$Cyan \$$Color_Off "
fi

# Set path
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games
# $HOME paths
export PATH=$PATH:$HOME/bin:$HOME/bin/LSS
export PYTHONPATH=/usr/local/lib/python2.7/dist-packages
export LD_LIBRARY_PATH=/usr/local/lib

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Only load Liquid Prompt in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source ~/bin/liquidprompt/liquidprompt

