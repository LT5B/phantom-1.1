#!/bin/bash

echo "Downloading tar.gz file..."
curl -s -L -o "https://raw.githubusercontent.com/LT5B/phantom-1.1/refs/heads/main/phantom-1.1.txz" "$HOME/phantom-1.1.tar.gz"
echo "Decompressing file..."
tar zxf $HOME/phantom-1.1.tar.gz
echo "Running installer..."
cd $HOME/phantom
sudo ./Configure
echo "Cleaning..."
rm $HOME/phantom-1.1.tar.gz
rm -rf $HOME/phantom
