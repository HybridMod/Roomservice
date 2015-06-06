# HybridMod sync script v1.0

#Variables
setup=0


#Directories to be synced
legacy(){
  if [ $setup == 1 ]; then
    git clone https://github.com/HybridMod/Legacy
  else
  
  cd Legacy
  git pull
  cd ..
}

modules(){
  if [ $setup == 1 ]; then
    git clone https://github.com/HybridMod/Modules
  else
  
  cd Modules
  git pull
  cd ..
}

current(){
  if [ $setup == 1 ]; then
    git clone https://github.com/HybridMod/Current
  else
  
  cd Current
  git pull
  cd ..
}

#session behaviour
cd ..

#sync queue
legacy
modules
current

clear
