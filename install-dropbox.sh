wget https://www.dropbox.com/download?dl=packages/fedora/nautilus-dropbox-2022.12.05-1.fedora.x86_64.rpm -O ./downloaded/dropbox.rpm
sudo dnf install libgnome -y

sudo rpm -ivF ./downloaded/dropbox.rpm