#!/bin/bash

echo "Downloading txz file..."
curl -s -o https://raw.githubusercontent.com/LT5B/phantom-1.1/refs/heads/main/phantom-1.1.txz
echo "Decompressing file..."
tar xJf Phantom-1.1.txz
echo "Running installer..."
cd Phantom
sudo ./Configure
echo "Cleaning..."
rm phantom-1.1.txz
rm Phantom
