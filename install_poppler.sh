#!/bin/bash

# Check if Poppler is installed
if ! command -v pdftoppm &> /dev/null; then
    echo "Poppler is not installed. Installing..."
    
    # Install Poppler using package manager (apt for Debian-based systems)
    sudo apt update
    sudo apt install -y poppler-utils
    
    if [ $? -eq 0 ]; then
        echo "Poppler installed successfully."
    else
        echo "Failed to install Poppler."
        exit 1
    fi
fi

# Add Poppler to PATH if necessary
poppler_bin_path=$(dirname "$(command -v pdftoppm)")
if [[ ":$PATH:" != *":$poppler_bin_path:"* ]]; then
    echo "Adding Poppler directory to PATH..."
    echo "export PATH=\$PATH:$poppler_bin_path" >> ~/.bashrc
    source ~/.bashrc
    echo "Poppler directory added to PATH."
else
    echo "Poppler directory is already in PATH."
fi

echo "Poppler installation and configuration completed."
