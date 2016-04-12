#!/usr/bin/env bash

# Ask for the administrator password upfront.
#sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
#while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

MPVDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Install mpv via Homebrew
#if test ! $(which mpv); then
#	echo "Installing mpv via Homebrew"
#	brew install mpv --with-bundle
#	brew linkapps mpv
#fi

#echo ""
#echo "Setting up mpv"

# Create .config directory if it does not exist
mkdir -p ~/.config

# Create and sync all necessary directories and files
mkdir -p ~/.config/mpv
mkdir -p ~/.config/mpv/watch_later
rsync --exclude ".DS_Store" --exclude "install.sh" -ravh $MPVDIR ~/.config;
