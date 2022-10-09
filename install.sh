#!/usr/bin/env bash


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


