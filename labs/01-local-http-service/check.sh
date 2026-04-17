#!/usr/bin/env bash

echo "========================================"
echo "Checking Nmap Lab 01"
echo "========================================"

FAIL=0

if [ ! -f result.txt ]; then
  echo "[FAIL] result.txt was not found."
  FAIL=1
else
  echo "[OK] result.txt exists."
fi

if [ -f result.txt ]; then
  if grep -Eq "8000/tcp[[:space:]]+open" result.txt; then
    echo "[OK] Port 8000 is marked as open."
  else
    echo "[FAIL] Port 8000 was not found as open in result.txt."
    FAIL=1
  fi
fi

if [ -f result.txt ]; then
  if grep -Eiq "http|simplehttpserver|python" result.txt; then
    echo "[OK] HTTP or Python service information detected."
  else
    echo "[WARN] Service/version information was not found in result.txt."
    echo "      This may happen if you saved results from a basic scan instead of -sV."
  fi
fi

if command -v ss >/dev/null 2>&1; then
  if ss -ltn 2>/dev/null | grep -q ":8000"; then
    echo "[OK] Something is listening on port 8000 right now."
  else
    echo "[WARN] No active listener detected on port 8000 right now."
    echo "      Make sure the Python HTTP server is running if you want live verification."
  fi
fi

echo
if [ "$FAIL" -eq 0 ]; then
  echo "Lab check completed successfully."
  exit 0
else
  echo "Lab check failed."
  exit 1
fi
