#!/bin/bash
#.bash_functions
# Author: Joshua
#
# Proxy Functions
assignProxy(){
  PROXY_ENV="http_proxy ftp_proxy https_proxy all_proxy no_proxy HTTP_PROXY HTTPS_PROXY FTP_PROXY NO_PROXY ALL_PROXY"
  for envar in $PROXY_ENV
  do 
    export $envar=$1
  done
}

clrProxy(){
  assignProxy "" # This is what 'unset' does
}

myProxy(){
  read -p "User: " user
  read -p "Password: " -s pass && echo -e "*"
  proxy_value="http://$user:$pass@153.107.103.10:8080"
  assignProxy $proxy_value
}
###########################

# Extraction Functions
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)
        tar xjf $1
        ;;
      *.tar.gz)
        tar xzf $1
        ;;
      *.bz2)
        bunzip2 $1
        ;;
      *.rar)
        unrar x $1
        ;;
      *.gz)
        gunzip $1
        ;;
      *.tar)
        tar xf $1
        ;;
      *.tbz2)
        tar xjf $1
        ;;
      *.tgz)
        tar xzf $1
        ;;
      *.zip)
        unzip $1
        ;;
      *.Z)
        uncompress $1
        ;;
      *.7z)
        7z x $1
        ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
