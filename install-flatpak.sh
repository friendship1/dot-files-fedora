sudo dnf update -y
sudo dnf install flatpak -y

# https://flathub.org/apps/org.zotero.Zotero
# wget https://dl.flathub.org/repo/appstream/org.zotero.Zotero.flatpakref -P ./downloaded
# # https://flathub.org/apps/com.ticktick.TickTick
# wget https://dl.flathub.org/repo/appstream/com.ticktick.TickTick.flatpakref -P ./downloaded
# flatpak install --reinstall --or-update --from ./downloaded/org.zotero.Zotero.flatpakref -y
# flatpak install --reinstall --or-update --from ./downloaded/com.ticktick.TickTick.flatpakref -y

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.zotero.Zotero -y
flatpak install flathub com.ticktick.TickTick -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub com.usebottles.bottles -y