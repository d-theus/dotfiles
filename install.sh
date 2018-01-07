[[ $(id -u) -eq 0 ]] && echo "Launch this script as a user with sudo rights" && exit 1
[[ $(which sudo &>/dev/null; echo $?) -gt 0 ]] && echo "please, install sudo and edit sudoers." && exit 1

sudo pacman -Sy && sudo pacman -S --noconfirm git sudo
# It would probably complain about existing .config,
# so clone somewhere else and merge dirs manually
git clone https://github.com/d-theus/dotfiles ~/.config
sudo pacman -S --noconfirm base-devel zsh neovim i3-wm xsel compton ranger libcaca poppler atool mediainfo docker docker-compose dialog gtk-update-icon-cache gtk3 gtk-engine-murrine xbindkeys rxvt-unicode rxvt-unicode-terminfo urxvt-perls
mkdir -p ~/pac
sh -c 'for pkg in \
  faba-icon-theme-git \
  faba-mono-icons-git \
  gtk-theme-arc-git   \
  moka-icon-theme-git \
  urxvt-resize-font-git \
  do git clone https://aur.archlinux.org/${pkg}.git ~/pac/${pkg} && cd ~/pac/${pkg} && makepkg -fi --noconfirm; done'

mkdir -p ~/.fonts
curl -sL --output "~/.fonts/Source Code Pro Medium for Powerline.otf" "https://github.com/powerline/fonts/blob/master/SourceCodePro/Source%20Code%20Pro%20Medium%20for%20Powerline.otf\?raw\=true"
curl -sL --output "~/.fonts/Source Code Pro black for Powerline.otf"  "https://github.com/powerline/fonts/blob/master/SourceCodePro/Source%20Code%20Pro%20Black%20for%20Powerline.otf\?raw\=true"
curl -sL --output "~/.fonts/fontawesome-webfont.ttf"                  "https://github.com/FortAwesome/Font-Awesome/blob/master/fonts/fontawesome-webfont.ttf?raw=true"

ln -s ~/.config/gitconfig     ~/.gitconfig
ln -s ~/.config/gitignore     ~/.gitignore
ln -s ~/.config/gtkrc-2.0     ~/.gtkrc-2.0
ln -s ~/.config/xinitrc       ~/.xinitrc
ln -s ~/.config/Xresources    ~/.Xresources

# zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh) && sh ./install.sh && rm install.sh"
git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
ln -fs ~/.config/zshrc
chsh -s $(which zsh) $USER

# rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
mkdir -p ~/.rbenv/plugins
git clone https://github.com/rbenv/rbenv.git ~/.rbenv/plugins

if [ ! -f /etc/X11/xorg.conf.d/00-keyboard.conf ]; then
  sudo mkdir -p /etc/X11/xorg.conf.d
  echo <<EOF | sudo tee /etc/X11/xorg.conf.d/00-keyboard.conf >/dev/null
Section "InputClass"
        Identifier "system-keyboard"
        MatchIsKeyboard "on"
        Option "XkbLayout" "us,ru"
        Option "XkbModel" "pc104"
        Option "XkbOptions" "grp:alt_shift_toggle"
EndSection
EOF
fi
