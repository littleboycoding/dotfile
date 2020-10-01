#!/bin/bash

echo 'Installing my dotfile'

echo 'Installing neovim !'

sudo apt install -y neovim && echo Select default text editor && select-editor

 #_     _       _    _             
#| |   (_)_ __ | | _(_)_ __   __ _ 
#| |   | | '_ \| |/ / | '_ \ / _` |
#| |___| | | | |   <| | | | | (_| |
#|_____|_|_| |_|_|\_\_|_| |_|\__, |
                            #|___/ 

echo 'Linking config file to system (if file already exist it will be backup)'

# Neovim config
ln -srf --backup config/nvim/ ~/.config

# Fontconfig config
ln -srf --backup config/fontconfig/ ~/.config

# Fonts
ln -srf --backup fonts/ -T ~/.local/share/fonts/My\ fonts

echo 'Recaching font config'

fc-cache -rf

echo 'Source source.bash into ~/.bashrc'

echo 'source ~/Dotfile/source.bash' >> ~/.bashrc
source ~/.bashrc

echo 'Done !'


 #_____                      _                      _        _ 
#| ____|_  ___ __   ___ _ __(_)_ __ ___   ___ _ __ | |_ __ _| |
#|  _| \ \/ / '_ \ / _ \ '__| | '_ ` _ \ / _ \ '_ \| __/ _` | |
#| |___ >  <| |_) |  __/ |  | | | | | | |  __/ | | | || (_| | |
#|_____/_/\_\ .__/ \___|_|  |_|_| |_| |_|\___|_| |_|\__\__,_|_|
           #|_|                                                

#LSD (ls but with coloring and icon)
#wget https://github.com/Peltoche/lsd/releases/download/0.18.0/lsd_0.18.0_amd64.deb && sudo apt install ./lsd_0.18.0_amd64.deb && rm lsd_0.18.0_amd64.deb
#
 #Nerd Font
#wget -P ~/.local/share/fonts/Nerd\ Font/ https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf
#wget -P ~/.local/share/fonts/Nerd\ Font/ https%3A%2F%2Fgithub.com%2Fryanoasis%2Fnerd-fonts%2Fraw%2Fmaster%2Fpatched-fonts%2FTerminus%2Fterminus-ttf-4.40.1%2FRegular%2Fcomplete%2FTerminess%2520%28TTF%29%2520Nerd%2520Font%2520Complete%2520Mono.ttf
#
#wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Terminus.zip
#
 #NErd Font
#wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
#
#unzip '*.zip' -d ~/.local/share/fonts/Nerd\ Font && fc-cache -rfv && rm *.zip
