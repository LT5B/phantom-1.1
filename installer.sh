#!/bin/bash

echo "Downloading txz file..."
curl -s -L -o "https://raw.githubusercontent.com/LT5B/phantom-1.1/refs/heads/main/phantom-1.1.txz" "$HOME/phantom-1.1.txz"
echo "Decompressing file..."
tar xJf $HOME/phantom-1.1.txz
echo "Running installer..."
cd $HOME/phantom
sudo ./Configure
echo "Cleaning..."
rm $HOME/phantom-1.1.txz
rm -rf phantom
