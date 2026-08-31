#!/bin/bash

echo "Downloading txz file..."
curl -s -L -o https://raw.githubusercontent.com/LT5B/phantom-1.1/refs/heads/main/phantom-1.1.txz
echo "Decompressing file..."
tar xJf phantom-1.1.txz
echo "Running installer..."
cd phantom-1.1
sudo ./Configure
echo "Cleaning..."
cd ..
rm phantom-1.1.txz
rm -rf phantom-1.1
