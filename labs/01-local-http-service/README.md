# Lab 01: Discover an Open Port on Localhost

## Overview
In this lab, you will use Nmap to scan localhost and identify an open port.

## Objectives
- run a basic Nmap scan
- identify an open port
- understand localhost scanning

## Prerequisites
- Ubuntu / WSL
- Nmap installed

## Steps

### Step 1
Start a local service:

```bash
python3 -m http.server 8000
```

---

### Step 2

Scan localhost:

```bash
nmap localhost
```
---

### Step 3

Scan only port 8000:

```bash
nmap -p 8000 localhost
```

---

## Expected Result

- localhost is up
- port 8000 is open

---

## Key Terms

- localhost
- port
- open port
- scan
---
