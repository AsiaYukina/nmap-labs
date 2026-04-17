#!/usr/bin/env bash

echo "========================================"
echo "Cleanup"
echo "========================================"

if [ -f result.txt ]; then
  rm -f result.txt
  echo "[OK] Removed result.txt"
else
  echo "[INFO] result.txt not found"
fi

if [ -d results ]; then
  echo "[INFO] results/ directory is present"
fi

echo
echo "If the Python HTTP server is still running,"
echo "go to that terminal and press Ctrl + C to stop it."
