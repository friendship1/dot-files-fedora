.PHONY: all
all: pre edge vscode zsh backup stow side1 side2 font flatpak dropbox

.PHONY: server
server: pre zsh backup stow side1

.PHONY: stow
stow:
	@stow -t ~ tmux zsh vim
	mkdir -p ~/.config/nvim
	mkdir -p ~/.config/git
	@stow -t ~/.config/nvim nvim
	@stow -t ~/.config/git git

.PHONY: unstow
unstow:
	@stow -D -t ~ tmux zsh vim
	@stow -D -t ~/.config/nvim nvim
	@stow -D -t ~/.config/git git

.PHONY: backup
backup:
	sh backup.sh

.PHONY: pre
pre:
	sh install-pre.sh

.PHONY: edge
edge:
	sh install-edge.sh

.PHONY: vscode
vscode:
	sh install-vscode.sh

.PHONY: zsh
zsh:
	sh install-zsh.sh

.PHONY: side1
side1:
	sh install-side1.sh

.PHONY: side2
side:
	sh install-side2.sh

.PHONY: flatpak
flatpak:
	sh install-flatpak.sh

.PHONY: dropbox
dropbox:
	sh install-dropbox.sh

.PHONY: font
font:
	sh install-font.sh