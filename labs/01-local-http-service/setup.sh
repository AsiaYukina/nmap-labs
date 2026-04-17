#!/usr/bin/env bash

echo "========================================"
echo "Nmap Lab 01 Setup: Local HTTP Service"
echo "========================================"
echo

if ! command -v nmap >/dev/null 2>&1; then
  echo "ERROR: nmap is not installed."
  echo "Install it first with:"
  echo "  sudo apt update && sudo apt install nmap -y"
  exit 1
fi

if ! command -v python3 >/dev/null 2>&1; then
  echo "ERROR: python3 is not installed."
  echo "Install it first with:"
  echo "  sudo apt update && sudo apt install python3 -y"
  exit 1
fi

mkdir -p results

echo "Environment check passed."
echo
echo "Next steps:"
echo "1. Open Terminal 1 and run:"
echo "   python3 -m http.server 8000"
echo
echo "2. Open Terminal 2 and run:"
echo "   nmap localhost"
echo "   nmap -p 8000 localhost"
echo "   nmap -sV localhost"
echo "   nmap -oN result.txt localhost"
echo
echo "3. Verify with:"
echo "   bash check.sh"
echo
