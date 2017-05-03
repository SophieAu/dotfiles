# dotfiles-and-stuff
This is where I keep all my configs (dotfiles), templates and potentially other tech-y files. I also have The Script (dotfilesinit.sh) which in theory installs all the dotfiles. I haven't tested it though.

## dotfiles
All my current dotfiles:

* __Xdefaults__: I'm using this file exclusively to rice [urxvt](https://wiki.archlinux.org/index.php/Rxvt-unicode), my terminal emulator (and with it [ranger](https://www.digitalocean.com/community/tutorials/installing-and-using-ranger-a-terminal-file-manager-on-a-ubuntu-vps), my file manager)
* __Xmodmap__: for swapping around my ESC, Caps Lock and Windows keys
* __bash_profile__: setting the Android Studio path and loading rvm (Ruby virtual machine)
* __bashrc__: replacing vim with the vi-mode of gvim because of [reasons](https://sophieau.github.io/2017/03/20/how-to-get-the-system-clipboard-working-in-vim-on-fedora/), and setting aliases for system shutdown, suspend and reboot
* __i3.conf__: my [i3-gaps](https://github.com/Airblader/i3) config
* __i3blocks.battery.py__: a battery indicator for my status bar, stolen from [James Murphy](https://github.com/vivien/i3blocks-contrib/tree/master/battery)
* __i3blocks__: my i3 blocks (the status bar I'm using) config
* __ranger.conf__: my ranger config
* __rifle.conf__: the config for ranger's file opener
* __vimrc__: my [vim](http://www.vim.org/) config file
* __xbindkeysrc__: for accessing my keyboard's media keys using Spotify

 
## dotfiles archive
Dotfiles for programs I used in the past. Currently it only contains my old [AutoHotKey](https://www.autohotkey.com/) script from my Windows days.


## Templates
Both templates and stlyes used by programs (e.g. [LaTeX](https://www.latex-project.org/)) and for myself.

* __Lab Notes.txt__: Before I found [Boostnote](https://boostnote.io/) I took notes on my coding exploits on paper. This was how they were supposed to be organized
* __unisum.sty__: The LaTeX style for my uni course summaries

