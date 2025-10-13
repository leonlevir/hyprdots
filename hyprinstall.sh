#auth
polkit-gnome gnome-keyring

#Envs
nwg-look
ngw-displays
pavucontrol
waybar
rofi-wayland
network-manager-applet
cliphist

#hypr ecosystem
hypridle
hyprlock
hyprpaper
hyprshot

#thunar
thunar
tumbler
ffmpegthumbnailer
libopenraw 
poppler-glib 
gst-libav 
evince
thunar-archive-plugin
thunar-volman

#fonts
ttf-font-awesome
ttf-jetbrains-mono-nerd

sudo pacman -S -needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S flat-remix-gtk
yay -S waypaper
yay -S brave-bin
yay -S pcsx2-git




