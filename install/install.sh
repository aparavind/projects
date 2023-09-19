#!/bin/bash
green='\033[0;32m'
clear='\033[0m'
red='\033[0;31m'

ecgr()
{
    echo -n -e "$green$@$clear"
}

ecrd()
{
    echo -n -e "$red$@$clear"
}

ecpl()
{
    echo -n $@
}

cmdpsf()
{
    app="$1"
    cmd="$2"
    retval=0
    ecpl $app is installed and usable? 
    if eval $cmd > /dev/null 2>&1
    then
        ecgr ".... success"
    else
        ecrd ".... fail"
        retval=1
    fi
    echo ""
    return $retval
}
    


cmdpsf docker "docker ps"
cmdpsf aws "aws help"
