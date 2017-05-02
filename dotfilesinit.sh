#TODO: actually test if this script works

cd ./dotfiles

#move i3 files
ln ./i3.conf ~/.config/i3/config
ln ./i3blocks.conf ~/.config/i3/i3blocks.conf
ln ./i3blocks.battery.py ~/.config/i3/battery.py

#move ranger file
ln ./ranger.conf ~/.config/ranger/rc.conf

#move vim file
ln ./vimrc ~/.vimrc

#move bash files
ln ./bashrc ~/.bashrc
ln ./bash_profile ~/.bash_profile
ln ./bash_logout ~/.bash_logout

#move X.Org file
ln ./xbindkeysrc ~/.xbindkeysrc
ln ./Xresources ~/.Xresources
ln ./Xmodmap ~/.Xmodmap
ln ./Xmonitorsetup.sh ~/.Xmonitorsetup.sh

