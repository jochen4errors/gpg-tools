start=#!/bin/bash

echo "====== GPG Create Signature ========"
echo "= https://github.com/jochen4errors ="
echo "===================================="

File=$1

if [ -f "$File" ]; then
  echo "   🔎 $File 🆗"
else
  echo "   🔎 $File ⛔"; exit 1
fi

echo "=== working ==="

gpg -a --output $File.sig --detach-sig $File

echo "=== end ==="

exit 0
