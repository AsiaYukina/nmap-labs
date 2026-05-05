# Nmap Labs

## Overview

This repository contains beginner-friendly Nmap labs focused on basic network scanning, port discovery, service detection, UDP scanning, and saving scan results.

The labs were completed as part of my cybersecurity learning practice. Each lab includes commands, explanations, screenshots, key terms, and a short summary of what I learned.

The goal of this repository is to document my progress and build a clean cybersecurity portfolio.

## About Nmap

Nmap, short for Network Mapper, is a network scanning tool used to discover hosts, open ports, running services, and basic service information.

Cybersecurity analysts and penetration testers use Nmap during reconnaissance to understand what is running on a system or network.

## Repository Structure

```text
nmap-labs/
├── README.md
└── labs/
    ├── 01-local-http-service/
    │   ├── README.md
    │   └── screenshots/
    ├── 02-find-open-port/
    │   ├── README.md
    │   └── screenshots/
    ├── 03-save-nmap-output-to-xml/
    │   ├── README.md
    │   └── screenshots/
    ├── 04-scan-targets-from-file/
    │   ├── README.md
    │   └── screenshots/
    ├── 05-uncover-the-secret-port/
    │   ├── README.md
    │   └── screenshots/
    ├── 06-find-open-udp-port/
    │   ├── README.md
    │   └── screenshots/
    └── 07-identify-linux-server-version/
        ├── README.md
        └── screenshots/
```

## Labs

| Lab | Topic | Main Skill |
|---|---|---|
| [Lab 01: Discover a Local Web Service with Nmap](labs/01-local-http-service/) | Local HTTP service discovery | Basic port scanning |
| [Lab 02: Find an Open Port on Localhost](labs/02-find-open-port/) | Unknown open port discovery | Full TCP port scanning |
| [Lab 03: Save Nmap Output to XML](labs/03-save-nmap-output-to-xml/) | Output documentation | XML output with `-oX` |
| [Lab 04: Scan Targets from a File with Nmap](labs/04-scan-targets-from-file/) | Target list scanning | Using `-iL` |
| [Lab 05: Uncover the Secret Port with Nmap](labs/05-uncover-the-secret-port/) | Hidden port discovery | Full port scan with `-p-` |
| [Lab 06: Find an Open UDP Port with Nmap](labs/06-find-open-udp-port/) | UDP scanning | Using `-sU` |
| [Lab 07: Identify Linux Server Version with Nmap](labs/07-identify-linux-server-version/) | Service version detection | Using `-sV` |

## Tools Used

- Nmap
- Netcat (`nc`)
- Python 3
- Ubuntu / WSL terminal
- Nano text editor
- Git and GitHub

## Skills Practiced

Through these labs, I practiced:

- Scanning `localhost`
- Finding open TCP ports
- Scanning a specific port with `-p`
- Scanning all TCP ports with `-p-`
- Running a local HTTP server with Python
- Creating test services with Netcat
- Scanning UDP ports with `-sU`
- Detecting service versions with `-sV`
- Saving Nmap output to XML with `-oX`
- Scanning targets from a file with `-iL`
- Reading and documenting scan results
- Organizing cybersecurity lab reports in GitHub

## Common Commands Used

### Basic Nmap Scan

```bash
nmap localhost
```

### Scan a Specific Port

```bash
nmap -p 8000 localhost
```

### Scan All TCP Ports

```bash
nmap -p- localhost
```

### Save Output to XML

```bash
nmap -oX scan_results.xml localhost
```

### Scan Targets from a File

```bash
nmap -iL targets.txt
```

### UDP Scan

```bash
sudo nmap -sU -p 5555 localhost
```

### Service Version Detection

```bash
nmap -sV localhost
```

## Key Concepts

| Concept | Explanation |
|---|---|
| Port | A communication endpoint used by a network service |
| Open port | A port where a service is running and accepting connections |
| TCP | Transmission Control Protocol, a connection-based network protocol |
| UDP | User Datagram Protocol, a connectionless network protocol |
| Service discovery | The process of identifying services running on a system |
| Version detection | The process of identifying service software and version information |
| Reconnaissance | The process of collecting information about a system or network |
| Localhost | The local machine, usually represented by `127.0.0.1` |

## What I Learned

These labs helped me understand the basics of network scanning with Nmap.

I learned how to find open ports, scan specific ports, scan all TCP ports, scan UDP ports, save scan results, and detect service versions.

I also learned that scan results need to be interpreted carefully. For example, UDP scans may show `open|filtered` because UDP does not use a connection handshake like TCP.

Most importantly, I learned how to document cybersecurity labs clearly and organize them in a GitHub repository.

## Ethical Note

These labs were performed only on `localhost` and local test services.

Nmap should only be used on systems that I own or have permission to test. Unauthorized scanning can be illegal and unethical.

## Status

Completed labs:

- [x] Lab 01: Discover a Local Web Service with Nmap
- [x] Lab 02: Find an Open Port on Localhost
- [x] Lab 03: Save Nmap Output to XML
- [x] Lab 04: Scan Targets from a File with Nmap
- [x] Lab 05: Uncover the Secret Port with Nmap
- [x] Lab 06: Find an Open UDP Port with Nmap
- [x] Lab 07: Identify Linux Server Version with Nmap

## Author

Created by **Anastasiia Yurchenko** as part of cybersecurity learning and portfolio development.
