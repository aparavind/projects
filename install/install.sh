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
    
run_terraform()
{
    state="$1"
    
    if [[ "$2" == "auto-approve" ]]
    then
        auto_approve="-auto-approve"
    else
        auto_approve=""
    fi

    docker run \
        -v "$PWD:/opt/mounted" \
        -v "$HOME/.aws:/opt/.aws" \
        -i \
        -t hashicorp/terraform:latest -chdir=/opt/mounted $1 $auto_approve
}


cmdpsf docker "docker ps"
cmdpsf aws "aws help"

## create spot instance of ec2
cwd=`dirname $0`
cd $cwd/terraform/compile-instance
run_terraform init && \
run_terraform plan && \
run_terraform apply auto-approve
cd ../../

## create docker for ansible
cd ansible
docker build -t ansible .
docker run ansible ansible -i 127.0.0.1, all -m ping -v
cd ../

