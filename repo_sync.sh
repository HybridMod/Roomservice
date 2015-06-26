#repo_sync.sh created by Diamond Bond | 2015

#tracking
current=https://github.com/HybridMod/Current
currentstaging=https://github.com/HybridMod/Current
modules=https://github.com/HybridMod/Modules
legacy=https://github.com/HybridMod/Legacy
release=https://github.com/HybridMod/Release
fileserver=https://github.com/HybridMod/fileserver
roomservice=https://github.com/HybridMod/roomservice

#functions
makedirs(){
	mkdir -p ~/android/scripts/HybridMod/
}

remove(){
	cd ~/android/scripts/HybridMod/
	rm -rf Current
	rm -rf Current-Staging
	rm -rf Modules
	rm -rf Legacy
	rm -rf Release
	rm -rf fileserver
}

sync(){
	cd ~/android/scripts/HybridMod/
	git clone $current
	git clone $currentstaging -b staging Current-Staging
	git clone $modules
	git clone $legacy
	git clone $release
	git clone $fileserver
}

#session_behaviour
remove && sync