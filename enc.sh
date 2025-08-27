#!/bin/bash

# Check for input
if [ -z "$1" ]; then
  echo "Usage: bash dec.sh <encrypted_filename>"
  exit 1
fi

INPUT="$1"
OUTPUT="${INPUT}_dec"

# Prompt user for iteration count
read -p "Enter PBKDF2 iteration count: " ITER

# Set default if input is empty
ITER=${ITER:-10000}

# Validate input is a number
if ! [[ "$ITER" =~ ^[0-9]+$ ]]; then
  echo "Error: Iteration count must be a number."
  exit 1
fi

# Decrypt using AES-256 with PBKDF2
openssl enc -d -aes-256-cbc -pbkdf2 -iter "$ITER" -in "$INPUT" -out "$OUTPUT"

echo "Decrypted: $OUTPUT"

