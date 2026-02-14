#!/bin/sh

if [ "$(hostname)" = "psyche" ]; then
  hyprctl keyword monitor "HDMI-A-2,3840x2160@120,0x0,1,bitdepth,10"
fi
