#!/bin/bash

# Check for input
if [ -z "$1" ]; then
  echo "Usage: bash enc.sh <filename>"
  exit 1
fi

INPUT="$1"
OUTPUT="${INPUT}_dec"

# Prompt user for iteration count
read -p "key (iteration count): " ITER

# Set default if input is empty
ITER=${ITER:-10000}

# Validate input is a number
if ! [[ "$ITER" =~ ^[0-9]+$ ]]; then
  echo "Error: key (iteration count) must be a number."
  exit 1
fi

# Encrypt using AES-256 with PBKDF2
openssl enc -aes-256-cbc -pbkdf2 -iter "$ITER" -in "$INPUT" -out "$OUTPUT"

echo "Encrypted: $OUTPUT"

