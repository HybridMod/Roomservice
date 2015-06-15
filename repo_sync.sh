#repo_sync.sh created by Diamond Bond | 2015

var(){
	repotoolver=1.0
	dirsetup=0
}

dir_setup(){
	#temp
}

#session_behaviour
#call functions
var
#conditionals
if [ -d ~/Scripts/HybridMod/ ]; then
	dirsetup=0
else
	dirsetup=1
fi
#more functions
if [ $dirsetup -eq 1 ]; then
	mkdir -p ~/Scripts/HybridMod/
installdir="/system/etc/init.d/"
initd=`if [ -d $initd_dir ]; then echo 1; else echo 0; fi`