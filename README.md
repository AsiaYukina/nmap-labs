# nmap-labs

Hands-on Nmap command-line labs for beginners.

## Overview

This repository contains beginner-friendly **Nmap labs** designed for command-line practice in a local Linux or WSL environment.

The goal of this project is to build practical skills in:

- host discovery
- port scanning
- service detection
- verbose scanning
- file-based target scanning
- UDP scanning
- OS detection
- output saving in different formats
- working with common Nmap options

These labs are written in a simple step-by-step format inspired by hands-on learning platforms, but adapted for my own practice environment and GitHub portfolio.

---

## Who This Repository Is For

This repository is useful for:

- beginners learning Nmap
- students building cybersecurity practice projects
- anyone who wants simple command-line labs for local testing

---

## Environment

These labs are designed to be completed in:

- Ubuntu
- WSL (Windows Subsystem for Linux)
- other Linux command-line environments

Tools used in different labs may include:

- `nmap`
- `python3`
- `nc` (netcat)
- `grep`
- `awk`
- `sed`

---

## Labs

| Lab | Title | Main Focus |
|-----|-------|------------|
| 01 | Discover a Local Web Service with Nmap | Basic localhost scanning |
| 02 | Find an Open Port on Localhost | Full port scan with `-p-` |
| 03 | Save Nmap Output to XML | XML output with `-oX` |
| 04 | Scan Targets from a File | Reading targets with `-iL` |
| 05 | Uncover the Secret Port | Verbose full-port scan with `-v` |
| 06 | Find an Open UDP Port | UDP scanning with `-sU` |
| 07 | Identify Linux Server Version | OS detection with `-O` |

---

## Learning Goals

By working through these labs, I practice how to:

- scan local targets with Nmap
- identify open ports
- detect running services
- scan specific ports
- scan all ports
- read targets from files
- perform UDP scans
- detect operating systems
- save results in different formats
- document command-line work clearly

---

## Repository Structure

```text
nmap-labs/
├── README.md
└── labs/
    ├── 01-local-http-service/
    │   └── README.md
    ├── 02-find-open-port/
    │   └── README.md
    ├── 03-save-nmap-output-to-xml/
    │   └── README.md
    ├── 04-scan-targets-from-file/
    │   └── README.md
    ├── 05-uncover-the-secret-port/
    │   └── README.md
    ├── 06-find-open-udp-port/
    │   └── README.md
    └── 07-identify-linux-server-version/
        └── README.md
```

## Notes

- All labs are intended for safe practice in a local environment.
- These exercises are for learning and portfolio development.
- Scanning should only be performed on systems you own or are authorized to test.

---

## Future Plans

Planned future labs may include:

- service version detection
- normal, XML, and grepable output comparison
- default scripts with -sC
- aggressive scan options
- additional local test scenarios

---

## Author

Created as part of my cybersecurity learning and GitHub portfolio development.

---
