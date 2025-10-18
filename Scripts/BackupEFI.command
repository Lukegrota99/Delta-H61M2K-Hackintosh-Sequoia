#!/bin/bash
set -e
STAMP=$(date +%Y-%m-%d_%H-%M-%S)
mkdir -p "$HOME/Desktop/EFI-Backups/$STAMP"
cp -R /Volumes/EFI "$HOME/Desktop/EFI-Backups/$STAMP/"
echo "Backup salvo em ~/Desktop/EFI-Backups/$STAMP"
