start=#!/bin/bash

echo "======= GPG Signature Check ========"
echo "= https://github.com/jochen4errors ="
echo "===================================="

File=$1

if [ -f "$File" ]; then
  echo "   🔎 $File 🆗"
else
  echo "   🔎 $File ⛔"; exit 1
fi

if [ -f "$File.asc" ]; then
  echo "   🔎 $File.asc 🆗"
else
  echo "   🔎 $File.asc ⛔"; exit 1
fi

echo "=== working ==="
gpg --verify --keyserver keyserver.ubuntu.com --auto-key-retrieve $File.asc $File 

echo "=== end ==="

exit 0
