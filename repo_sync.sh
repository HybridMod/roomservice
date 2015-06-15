#repo_sync.sh created by Diamond Bond | 2015

#tracking
current=https://github.com/HybridMod/Current
modules=https://github.com/HybridMod/Modules
legacy=https://github.com/HybridMod/Legacy
release=https://github.com/HybridMod/Release
fileserver=https://github.com/HybridMod/fileserver
roomservice=https://github.com/HybridMod/roomservice

#functions
makedirs(){
	mkdir -p ~/Scripts/HybridMod
}

remove(){
	cd ~/Scripts/HybridMod/
	rm -rf Current
	rm -rf Modules
	rm -rf Legacy
	rm -rf Release
	rm -rf fileserver
}

sync(){
	cd ~/Scripts/HybridMod/
	git clone $current
	git clone $modules
	git clone $legacy
	git clone $release
	git clone $fileserver
}

#session_behaviour
options && tracking
remove && sync
