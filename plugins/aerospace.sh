#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh

FOCUS_COLOR=0xccb4befe  # Активный: насыщенный фиолетовый
NORMAL_COLOR=0x33b4befe # Неактивный: прозрачный "стекло"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME \
    background.color=$FOCUS_COLOR \
    label.shadow.drawing=off \
    icon.shadow.drawing=off \
    background.border_width=0
else
  sketchybar --set $NAME \
    background.color=$NORMAL_COLOR \
    label.shadow.drawing=off \
    icon.shadow.drawing=off \
    background.border_width=2
fi
