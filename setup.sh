#!/bin/bash

# Specify the URL of the Poppler archive
POPPLER_URL="https://poppler.freedesktop.org/poppler-21.12.0.tar.xz"

# Download Poppler archive to current working directory
curl -o "poppler.tar.xz" "$POPPLER_URL"

# Extract Poppler to current working directory
tar -xf "poppler.tar.xz"

# Add Poppler bin directory to PATH
export PATH="$PATH:$(pwd)/poppler-21.12.0/bin"

# Test installation
pdftotext -v
