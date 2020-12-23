#!/bin/bash
make_worklist () {
    rm -f *.tmp
    while read -r PKG || [[ -n $PKG ]]; do 
        REPO_VERSION=$(pacman -Si $PKG | grep -Po '(?<=^Version).*' | sed "s/^\s*: //")
        AUR_VERSION=$(curl --compressed -s "https://aur.archlinux.org/rpc/?v=5\&type=info&arg\[\]=$PKG" | jq -r '.results[0].Version')
        if [[ $AUR_VERSION == "null" ]]; then
            echo "$PKG is not in the AUR anymore. please remove!"
        elif [[ $AUR_VERSION == $REPO_VERSION ]]; then
            echo "$PKG is up to date => download $REPO_VERSION"
            echo "$PKG">>download.tmp
        elif [[ $AUR_VERSION != $REPO_VERSION ]]; then
            echo "$PKG is outdated => build $AUR_VERSION"
            echo "$PKG">>build.tmp
        fi
    done <packages.txt
}

substitute () {
    sed -i "s/OWNER/${OWNER}/g" $1
    sed -i "s/REPO/${REPO}/g" $1
    sed -i "s/TIMESTAMP/$(date)/g" $1
}