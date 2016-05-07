#!/bin/bash
#
# Bootstrap a new ~fantastic using mr.
#
########################################

# Exit immediately if a command exits with a non-zero status.
trap 'exit 1' ERR

git_host=github.com
git_user=polcad
git_user_at_host=$git_user@$git_host
machine='linux-e330'
# get the diractory name of the script
rdir=`dirname $(readlink -f "$0")`

echo "Setting up ~/bin ..."
if ! [ -d ~/bin ]; then
    mkdir ~/bin
fi

cd $HOME/bin

if ! [ -d ~/bin/$machine ]; then
    git clone https://github.com/polcad/$machine.git
fi

export PATH=$HOME/bin:$PATH

if ! [ -e ~/.mrtrust ]; then
    echo "$HOME/bin/$machine/mrconfig" > ~/.mrtrust
fi

if ! [ -e ~/.mrconfig ]; then
    ln -sf "$HOME/bin/$machine/mrconfig" ~/.mrconfig
fi

echo "Running mr checkout ..."
mr -s -i up
