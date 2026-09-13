#!/bin/bash

# Configurações do monitor e resoluções
MONITOR="HDMI-A-1"
RES_JOGO="1600x800@60"
SCALE=1

# Caminho do executável do seu jogo
JOGO="/home/leo/albiononline/game_x64/Albion-Online"

# Pega dinamicamente a resolução atual (nativa) do sistema antes de abrir o jogo
ORIGINAL_RES=$(hyprctl monitors -j | jq -r ".[] | select(.name == \"$MONITOR\") | .width, .height, .refreshRate" | paste -sd " " - | awk '{print $1"x"$2"@"int($3)}')

if [ -z "$ORIGINAL_RES" ]; then
    notify-send "Game Launcher" "Erro: Não foi possível detectar a resolução atual!"
    exit 1
fi

notify-send "Game Launcher" "Mudando resolução do sistema para $RES_JOGO e abrindo o Albion..."

# Altera a resolução do sistema inteiro (ativando o letterboxing físico no monitor)
hyprctl eval "hl.monitor({ output = \"$MONITOR\", mode = \"$RES_JOGO\", position = \"0x0\", scale = $SCALE })"

# Pequena pausa para o monitor estabilizar o modo de vídeo
sleep 1

# Executa o jogo usando o gamemoderun e aguarda ele fechar
gamemoderun "$JOGO"

# Assim que o jogo fecha, o script continua e restaura a resolução nativa original
notify-send "Game Launcher" "Fechando o jogo. Restaurando resolução original: $ORIGINAL_RES"
hyprctl eval "hl.monitor({ output = \"$MONITOR\", mode = \"$ORIGINAL_RES\", position = \"0x0\", scale = $SCALE })"
