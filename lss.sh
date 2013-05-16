# Linux Setup Script (LSS)
# Author: iseijin
# Date: 13/05/2013
# Description: Use git to retrieve various Linux Configuration files from a repository on github.
# Files:
#       .bashrc
#       .bash_aliases
#       .vimrc
#       .Xresources
# Dirs:
#       $HOME/vim/
#
# Scripts will be stored in $HOME/bin - create the directory if it doesn't exist
if [ -d "$HOME/bin" ]; then
  cd $HOME/bin
else
  mkdir $HOME/bin
fi

# Files from this script will be stored in $HOME/bin/configFiles - create it if it doesn't exist
if [ -d "$HOME/bin/configFiles" ]; then
  cd $HOME/bin/configFiles
else
  mkdir $HOME/bin/configFiles
fi

# Use Git instead of wget
git clone git@github.com:iseijin/LSS.git $HOME/bin/configFiles

# Set it up so the following files are stored in an "update" folder and compared to files in "current" if the Update
# files are different, move the current files to "previous" and "update" to "current"
#wget https://github.com/iseijin/LSS/blob/master/configFiles/.bashrc
#wget https://github.com/iseijin/LSS/blob/master/configFiles/.bash_alliases
#wget https://github.com/iseijin/LSS/blob/master/configFiles/.vimrc
#wget https://github.com/iseijin/LSS/blob/master/configFiles/.Xresources
#wget -r --no-parent --reject "index.html*" https://github.com/iseijin/LSS/blob/master/configFiles/.vim/
# Try the following if the above doesn't download just ".vim/" and it's contents
#wget -r -nH --cut-dirs=2 --no-parent --reject="index.html*"
