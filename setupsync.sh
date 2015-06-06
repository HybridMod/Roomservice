hmloc=~/HybridMod

echo "function hmsync(){
cd $hmloc/.roomservice/
./sync.sh
cd ..
}" >> ~/.bash_aliases

source ~/.bashrc
