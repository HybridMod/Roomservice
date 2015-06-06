# Sync Script

#variables
setup=1

function legacy(){
if [ $setup == 1 ]; then
  git clone https://github.com/HybridMod/Legacy
fi
cd Legacy
git pull
cd ..
}

function modules(){
if [ $setup == 1 ]; then
  git clone https://github.com/HybridMod/Modules
fi
cd Modules
git pull
cd ..
}

function current(){
if [ $setup == 1 ]; then
  git clone https://github.com/HybridMod/Current
fi
cd Current
git pull
cd ..
}

#session behaviour
clear
cd ..

#sync queue
legacy
modules
current
