#!/bin/bash

# Specify the URL of the Poppler archive
POPPLER_URL="https://poppler.freedesktop.org/poppler-21.12.0.tar.xz"

# Specify the destination directory for the downloaded archive
DESTINATION_DIR="/path/to/save/poppler/archive"

# Download Poppler archive
curl -o "$DESTINATION_DIR/poppler.tar.xz" "$POPPLER_URL"

# Extract Poppler
tar -xf "$DESTINATION_DIR/poppler.tar.xz" -C "$DESTINATION_DIR"

# Add Poppler bin directory to PATH
export PATH="$PATH:$DESTINATION_DIR/poppler-21.12.0/bin"

# Test installation
pdftotext -v
