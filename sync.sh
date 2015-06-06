# Sync Script

#variables
setup=0

clear
cd ..

#directories to be synced

#Legacy
if [ $setup == 1 ]; then
  git clone https://github.com/HybridMod/Legacy
else
cd Legacy
git pull
cd ..
#Modules
if [ $setup == 1 ]; then
  git clone https://github.com/HybridMod/Modules
else
cd Modules
git pull
cd ..
#Current
if [ $setup == 1 ]; then
  git clone https://github.com/HybridMod/Current
else
cd Current
git pull
cd ..

clear
