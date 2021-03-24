#!/bin/bash

source ~/.cache/wal/colors.sh

echo "idle_bg = \"$background\"
idle_fg = \"$foreground\"

info_bg = \"$color3\"
info_fg = \"$background\"

good_bg = \"$color4\"
good_fg = \"$background\"

warning_bg = \"$color4\"
warning_fg = \"$background\"

critical_bg = \"$color4\"
critical_fg = \"$background\"

separator = \"\"
separator_bg = \"auto\"
separator_fg = \"auto\"

alternating_tint_bg = \"#000000\"
alternating_tint_fg = \"#000000\"" > mytheme.toml
