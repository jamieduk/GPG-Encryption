#!/bin/bash
# (c) J~Net 2025
#
# ./enc.sh "test.txt"
#

gpgconf --kill gpg-agent
gpg --symmetric --cipher-algo AES256 $1

echo "Encrypted File Stored As $1.gpg"
