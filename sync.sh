# HybridMod sync script v1.0

#Directories to be synced
legacy(){
  git clone https://github.com/HybridMod/Legacy
  cd Legacy
  git pull
  cd ..
}

modules(){
  git clone https://github.com/HybridMod/Modules
  cd Modules
  git pull
  cd ..
}

current(){
  git clone https://github.com/HybridMod/Current
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
