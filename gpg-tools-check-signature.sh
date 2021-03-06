start=#!/bin/bash

echo "======= GPG Signature Check ========"
echo "= https://github.com/jochen4errors ="
echo "===================================="

File=$1

if [ -f "$File" ]; then
  echo "   ๐ $File ๐"
else
  echo "   ๐ $File โ"; exit 1
fi

if [ -f "$File.sig" ]; then
  echo "   ๐ $File.sig ๐"
else
  echo "   ๐ ยป$File.sigยซ โ"; exit 1
fi

echo "=== working ==="
gpg --verify --keyserver keyserver.ubuntu.com --auto-key-retrieve $File.sig $File 

echo "=== end ==="

exit 0
