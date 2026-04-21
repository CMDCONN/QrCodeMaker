#!/bin/bash

echo "Installing required package..."
python3 -m pip install requests

echo "Running Python script..."
python3 qr.py

read -p "Press Enter to continue..."