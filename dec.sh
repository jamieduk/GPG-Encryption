#!/bin/bash
# (c) J~Net 2025
#
# ./dec.sh "test.txt.gpg"
#
gpgconf --kill gpg-agent

# Remove the .gpg extension from the input file
output_file="${1%.gpg}"

# Decrypt the file and save it with the original filename (without .gpg extension)
gpg --output "$output_file" --decrypt "$1"

echo "Decrypted File Stored in $output_file"
