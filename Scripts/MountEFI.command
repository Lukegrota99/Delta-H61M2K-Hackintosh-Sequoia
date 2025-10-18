#!/bin/bash
set -e
diskutil list
echo "Digite o identificador do disco EFI (ex: disk0s1):"
read DISK
sudo diskutil mount $DISK
open /Volumes/EFI
