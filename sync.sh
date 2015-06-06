#!/bin/bash
# Sync Script

# Colors
red=$(tput setaf 1)
grn=$(tput setaf 2)
ylw=$(tput setaf 3)
blu=$(tput setaf 4)
ppl=$(tput setaf 5)
cya=$(tput setaf 6)
txtbld=$(tput bold)
bldred=${txtbld}$(tput setaf 1)
bldgrn=${txtbld}$(tput setaf 2)
bldylw=${txtbld}$(tput setaf 3)
bldblu=${txtbld}$(tput setaf 4)
bldppl=${txtbld}$(tput setaf 5)
bldcya=${txtbld}$(tput setaf 6)
txtrst=$(tput sgr0)
rev=$(tput rev)
pplrev=${rev}$(tput setaf 5)
cyarev=${rev}$(tput setaf 6)
ylwrev=${rev}$(tput setaf 3)
blurev=${rev}$(tput setaf 4)

#variables
setup=0

function legacy(){
if [ $setup == 1 ]; then
  git clone https://github.com/HybridMod/Legacy
fi
cd Legacy
echo ${txtbld}"Legacy: "${txtrst} && git pull
cd ..
}

function modules(){
if [ $setup == 1 ]; then
  git clone https://github.com/HybridMod/Modules
fi
cd Modules
echo ${txtbld}"Modules: "${txtrst} && git pull
cd ..
}

function current(){
if [ $setup == 1 ]; then
  git clone https://github.com/HybridMod/Current
fi
cd Current
echo ${txtbld}"Current: "${txtrst} && git pull
cd ..
}

#session behaviour
clear
cd ..

#sync queue
legacy
modules
current
