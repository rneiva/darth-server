#!/bin/bash
set -euo pipefail
BASEDIR=$(dirname "${BASH_SOURCE}")

wait_time=${DAEMON_INTERVAL:-15}
wait_time=$((wait_time * 5))

echo "
  _________________________
< Let's install everything! >
  -------------------------
         \   ^__^ 
          \  (oo)\_______
             (__)\       )\/\
                 ||----w |
                 ||     ||
"

###########
#   S.O   #
###########

sudo apt install -y update ;
PACKAGES=curl vim zsh gcc build-essential gnupg;
sudo apt install -y ${PACKAGES}

sudo apt clean all

#Extras Packages
sudo apt install -y software-properties-common && sudo apt update -y

######################
#  Package Manager   #
######################

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "[$(date +'%D %T')] Waiting ${wait_time} seconds for next execution"
sleep ${wait_time}

##########
#  ZSH   #
##########

#Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "[$(date +'%D %T')] Waiting ${wait_time} seconds for next execution"
sleep ${wait_time}

###########
#   DEV   #
###########

#Python 3.9
sudo apt instal python3.9

cd /tmp
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3.9 get-pip.py

#NodeJS v16.x
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "[$(date +'%D %T')] Waiting ${wait_time} seconds for next execution"
sleep ${wait_time}

###############
#   IaC/CLI   #
###############

cd /tmp
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

#Terraform
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update -y && sudo apt-get install -y terraform

echo "[$(date +'%D %T')] Waiting ${wait_time} seconds for next execution"
sleep ${wait_time}

##################
#   Automation   #
##################

sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt update -y && sudo apt install -y ansible

echo "[$(date +'%D %T')] Waiting ${wait_time} seconds for next execution"
sleep ${wait_time}