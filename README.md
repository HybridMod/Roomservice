# Setup Sync
- mkdir -p ~/HybridMod/ && cd ~/HybridMod/
- git clone https://github.com/HybridMod/roomservice .roomservice
- cd .roomservice && chmod +x *.sh && ./setupsync.sh

# Sync Initial Sources
- nano ~/HybridMod/.roomservice/sync.sh
- 
Change setup=0 to setup =1

CTRL + O && ENTER && CTRL + X

- hmsync

# Sync Changes
- hmsync
