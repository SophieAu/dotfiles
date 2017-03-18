#TODO: don't move but instead create hardlinks
#TODO: actually test if this script works

cd ./dotfiles

#move i3 files
mv ./i3.conf ~/.config/i3/config
mv ./i3blocks.conf ~/.config/i3/i3blocks.conf
mv ./i3blocks.battery.py ~/.config/i3/battery.py

#move ranger file
mv ./ranger.conf ~/.config/ranger/rc.conf

#move vim file
mv ./vimrc ~/.vimrc

#move bash files
mv ./bashrc ~/.bashrc
mv ./bash_profile ~/.bash_profile
mv ./bash_logout ~/.bash_logout

#move xbindkeys file
mv ./xbindkeysrc ~/.xbindkeysrc

#move screen layout files
mv ./xrandr.multi-screen.sh ~/.screenlayout/multi-screen.sh
mv ./xrandr.one-screen.sh ~/.screenlayout/one-screen.sh

