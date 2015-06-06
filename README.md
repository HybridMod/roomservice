HybridMod
================

Sync script setup for HybridMod.

1. Initialize repo using the following commands

```bash
mkdir ~/bin && curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo
echo "export PATH=~/bin:$PATH" >> ~/.bashrc && source ~/.bashrc
mkdir -p ~/HybridMod && cd ~/HybridMod
repo init -u git://github.com/HybridMod/roomservice.git -b master
```

2. Add our local manifest

```bash
curl --create-dirs -L -o .repo/manifests/default.xml -O -L https://raw.githubusercontent.com/HybridMod/roomservice/master/default.xml
```

3. Download sources
```bash
repo sync
```
