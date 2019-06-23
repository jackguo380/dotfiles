#! /bin/bash

set -e

repo=$(realpath "$(dirname "$0")")

cd "$HOME/.config"

for dir in alacritty i3 i3blocks; do

    rm -f $dir

    ln -s "$repo/$dir" .
done

echo Done

echo "Installing i3"

./i3-install-ubuntu-18.sh

echo "Installing alacritty"

./alacritty-install-ubuntu-18.sh
