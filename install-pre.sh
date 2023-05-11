sudo dnf check-update
sudo dnf update -y

# install development tools
sudo dnf group install "Development Tools" -y
sudo dnf install cmake -y

sudo dnf install stow -y

# already installed
sudo dnf install tmux -y 

sudo dnf install zsh -y
sudo dnf install util-linux-user -y

sudo dnf install vim -y
sudo dnf install neovim -y




