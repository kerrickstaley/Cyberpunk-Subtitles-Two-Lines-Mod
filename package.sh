#!/bin/bash
set -euo pipefail
out_file='cyberpunk-subtitles-two-lines-mod.zip'
rm -rf bin "$out_file"
dir='bin/x64/plugins/cyber_engine_tweaks/mods/subtitles-two-lines/'
mkdir -p "$dir"
cp init.lua "$dir"
zip -r "$out_file" bin
