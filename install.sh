#!/usr/bin/env bash

# Copiar la carpeta dunst
cp -r ~/wm-config/config/dunst ~/.config/

# Copiar la carpeta i3
cp -r ~/wm-config/config/i3 ~/.config/

# Copiar la carpeta i3blocks
cp -r ~/wm-config/config/i3blocks ~/.config/

echo "¡Hecho!"


#install all packages
sudo apt install $(cat depend.tx)

# install icons . . .
sudo wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-icon-theme/master/install.sh | sh

# install meson
pip3 install --user meson

# download
https://github.com/jbenden/i3-gaps-rounded i3-gaps
cd i3-gaps

# compile
mkdir -p build && cd build
meson ..
ninja
sudo ninja install


