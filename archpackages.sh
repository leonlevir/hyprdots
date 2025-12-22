#!/bin/bash

#LD_PRELOAD=/usr/\$LIB/libgamemodeauto.so mangohud %command%

# Script de instalação de pacotes para Arch Linux

# Atualizando o sistema antes de iniciar
echo "Atualizando o sistema..."
sudo pacman -Syu --noconfirm

# =====================================================================
# CLASSIFICANDO E INSTALANDO PACOTES ESSENCIAIS E UTILITÁRIOS
# =====================================================================

echo "Instalando pacotes essenciais..."

# Pacotes de Terminal
sudo pacman -S --noconfirm nano htop fastfetch curl eza tmux tree

# Ferramentas de Rede
sudo pacman -S --noconfirm bridge-utils git fwupd zerotier-one

# Virtualização
sudo pacman -S --noconfirm wine qemu-desktop libvirt virt-manager filezilla docker

# Gaming
sudo pacman -S --noconfirm steam discord gamemode lib32-gamemode snes9x-gtk 

# Ferramentas Gráficas e Multimídia
sudo pacman -S --noconfirm obs-studio qbittorrent kdenlive gimp drawing mangohud mpv mousepad loupe

# Ferramentas de Arquivo e Sistema
sudo pacman -S --noconfirm jre-openjdk udftools ntfs-3g gnome-disk-utility blueman bluez bluez-utils

# Ferramentas de Compactação
sudo pacman -S --noconfirm zip unzip file-roller 7zip ark

# Instalando o Flatpak via Pacman
sudo pacman -S --noconfirm flatpak

#
sudo pacman -S thunderbird

# Habilitando e Iniciando Serviços com systemctl
sudo systemctl enable bluetooth.service --now
sudo systemctl enable zerotier-one.service --now
sudo systemctl enable docker --now

# Atualiza o sistema
sudo pacman -Syu --noconfirm


# =====================================================================
# FINALIZAÇÃO
# =====================================================================

echo "Instalação concluída!"

