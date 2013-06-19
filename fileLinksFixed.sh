#!/bin/bash
# Linux Setup Script (LSS)
# Author: iseijin
# Date: 13/05/2013
# Description: Use git to retrieve various Linux Configuration files from a repository on github.
#+++++++++++++++++++++
#       ~/.bashrc
#       ~/.bash_aliases
#       ~/.vimrc
#       ~/.Xresources
#       ~/.vim/
#+++++++++++++++++++++
# This script runs from ~/bin - create the directory if it doesn't exist or modify the file to reflect where you want your scripts folder e.g. ~/scripts, /usr/bin

# Create sym links to files in LSS/configFiles
FILES=".bashrc
.bash_aliases
.vimrc
.Xresources
.vim
"
fpath=/home/$USER

for f in $FILES
do
  testname=$f
  backup=$testname.backup
  fullpath=$fpath/$testname
  if [ ! -L $fullpath ] && [ -e $fullpath ]; then # Backup if it is a FILE and NOT a linki
    if [ -e $fpath/$backup ]; then
      i=1
      while [ -e $fpath/$backup$i ]; do
        let i++
      done
      backup=$backup$i
    fi
    echo "Backing up $fullpath to $fpath/$backup"
    mv $fpath/$testname $fpath/$backup
   echo "Creating link for $fullpath"
    ln -s -f $fpath/bin/LSS/configFiles/$testname $fullpath
  elif [ -L $fullpath ]; then # If file is a LINK
    target=`readlink $fullpath`
    if [ $target != $fpath/bin/LSS/configFiles/$testname ]; then
      echo "Creating link for $fullpath"
      ln -s -f $fpath/bin/LSS/configFiles/$testname $fullpath
    else
      echo "Link for $fullpath has already been created."
    fi  
  elif [ ! -e $fpath/$testname ]; then # If no file or link exists this should run
    echo "No $fullpath/$testname File or Link: Creating link."
    ln -s -f $fpath/bin/LSS/configFiles/$testname $fullpath
  fi
done

source ~/.bashrc
