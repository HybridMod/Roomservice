# HybridMod sync script v1.0

#Directories to be synced
legacy(){
  cd legacy
  git pull
  cd ..
}

modules(){
  cd modules
  git pull
  cd ..
}

current(){
  cd current
  git pull
  cd ..
}

#session behaviour
cd ..
#sync queue
sync(){
  legacy
  modules
  current
} && sync
clear
