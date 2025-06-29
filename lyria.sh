#!/bin/bash

base64 -d <<<"H4sIAAAAAAAAA51PwRGEQAj7U0We+qIhZtIIxR8Je6NvwVXIEhMiAM4zB/o4ToF3LGKMCPRkTQI5
KX61LtmCajlplkY1vySxOJypydtQ76z/Ns0lIV8/pKPUNps4YErJrKId7CJLekvbqjoeT2pdrINj
b7dv7eBXsYzkGLbIxXuB/0zgQ3wjRfwAZA/3DKwBAAA=" | gunzip

packages=(
    lsd
    man
    floorp-bin
    vencord
    mpv
    cava
    ani-cli
    noto-fonts
    noto-fonts-emoji
    noto-fonts-extra
    neovim
    plexamp-appimage
    kdenlive-git
)

echo "Installing packages now, please wait."

for package in ${packages[@]}; do
    yay -S --noconfirm ${package}
done

echo "Setting up rust now."

curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh

echo "Setting up NVChad now."

git clone https://github.com/NvChad/starter ~/.config/nvim && nvim

