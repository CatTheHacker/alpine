#!/bin/sh
apk update
apk add busybox-static apk-tools-static
wget https://raw.github.com/CatTheHacker/alpine/master/etc/apk/repositories -O /etc/apk/repositories
apk.static update
apk.static upgrade --no-self-upgrade --available
apk add rust go curl nano htop cargo rclone bash fish git sudo
curl -L https://get.oh-my.fish | fish
sh -c "$(curl -fsSL https://raw.github.com/CatTheHacker/PowerShellStuff/install-powershell-on-alpine.sh)"
sh -c "$(curl -fsSL https://raw.github.com/ohmybash/oh-my-bash/master/tools/install.sh)"
