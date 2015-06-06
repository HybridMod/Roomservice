HybridMod
================

Sync script setup for HybridMod.

1. Initialize repo using the following commands

```bash
mkdir ~/bin
PATH=~/bin:$PATH
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
mkdir -p ~/HybridMod
cd ~/HybridMod
repo init -u git://github.com/HybridMod/roomservice.gi
```

2. Add our local manifest

```bash
curl --create-dirs -L -o .repo/local_manifests/default.xml -O -L https://raw.githubusercontent.com/HybridMod/roomservice/master/manifest.xml
```

3. Download sources
```bash
repo sync -f -j5
```
