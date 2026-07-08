#!/bin/bash
# @usage: bash tools/copy-local.sh
# Be careful about editing in factorio folder, as this will overwrite anything there

MOD_NAME="ddd-no-lamp-collision" # MUST be the same as in "src/info.json" !!!
# FACTORIO_DIR="$APPDATA/Factorio/mods/" # Windows
FACTORIO_DIR="$HOME/.factorio/mods" # Linux
RELEASE_FILE_NAME="$MOD_NAME"

echo "===== Current dir:"
pwd
# ls -al

echo "Remove previous contents"
mkdir -p "$FACTORIO_DIR"
rm -rfv "$FACTORIO_DIR/$RELEASE_FILE_NAME"

echo "===== Copy src folder to factorio mods folder"
# Copies everything including dot files/folders
cp -rfv "./src" "$FACTORIO_DIR/$RELEASE_FILE_NAME"

echo "===== Copied folder contents:"
ls -al "$FACTORIO_DIR/$RELEASE_FILE_NAME"
