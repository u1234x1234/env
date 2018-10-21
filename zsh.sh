sudo apt-get install zsh -y
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sed 's:env zsh -l::g' | sed 's:chsh -s .*$::g')"

echo "source ~/.bashrc_aliases" >> ~/.zshrc
sed -i 's/ZSH_THEME=.*/ZSH_THEME="dallas"/g' ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

sed -i 's/\(^plugins=([^)]*\)/\1 zsh-autosuggestions/' ~/.zshrc
