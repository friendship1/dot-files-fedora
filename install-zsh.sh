# >>> Install zsh >>>
echo "####### installing zsh...#######"
sudo dnf install zsh -y

# delete if already installed
sudo rm -r ~/.oh-my-zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# <<< Install zsh <<<
ZSH_CUSTOM=~/.oh-my-zsh/custom
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# autojump is replaced with zoxide
# git clone https://github.com/wting/autojump $ZSH_CUSTOM/plugins/autojump
# sudo apt install autojump

# change shell to zsh (maybe /usr/zsh)
chsh -s $(which zsh)