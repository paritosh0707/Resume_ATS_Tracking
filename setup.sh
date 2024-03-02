#!/bin/bash

# Download Poppler
wget -O "/tmp/poppler.7z" "https://blog.alivate.com.au/wp-content/uploads/2018/10/poppler-XX-win64.7z"

# Extract Poppler
7z x "/tmp/poppler.7z" -o"C:\path\to\poppler"

# Add Poppler bin directory to PATH
export PATH="$PATH:/c/path/to/poppler/bin"

# Test installation
pdftotext -v
