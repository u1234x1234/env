#! /bin/bash
sudo apt-get install fish -y
mkdir -p ~/.config/fish
CONFIG=~/.config/fish/config.fish
touch $CONFIG
echo "source ~/anaconda3/etc/fish/conf.d/conda.fish" >> $CONFIG
chsh -s /usr/bin/fish
