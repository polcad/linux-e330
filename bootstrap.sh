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
MACHINE='linux-e330'

echo "Setting up ~/bin ..."
if ! [ -d ~/bin ]; then
    mkdir ~/bin
fi

cd bin

if ! [ -d ~/bin/$MACHINE ]; then
    git clone https://github.com/polcad/$MACHINE.git
fi

export PATH=$HOME/bin:$PATH

if ! [ -e ~/.mrtrust ]; then
    echo "$HOME/bin/$MACHINE/mrconfig" > ~/.mrtrust
fi

if ! [ -e ~/.mrconfig ]; then
    ln -sf "$HOME/bin/$MACHINE/mrconfig" ~/.mrconfig
fi

echo "Running mr checkout ..."
mr -s -i up
