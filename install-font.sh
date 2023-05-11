# https://design.ubuntu.com/font
wget https://assets.ubuntu.com/v1/0cef8205-ubuntu-font-family-0.83.zip -P ./downloaded

unzip -n ./downloaded/0cef8205-ubuntu-font-family-0.83.zip -d ./downloaded

mkdir -p ~/.local/share/fonts
cp -r ./downloaded/ubuntu-font-family*/*.ttf ~/.local/share/fonts/
fc-cache -v