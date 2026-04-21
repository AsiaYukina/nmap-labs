# Lab 06: Find an Open UDP Port

## Overview

In this lab, you will use **Nmap** to investigate UDP services on `localhost`.

A UDP service is running somewhere in the port range from `9990` to `10000`. Your task is to scan that range, save the results to a file, identify the open UDP port, and store the discovered value in an environment variable.

This lab helps you practice:

- running a UDP scan with Nmap
- scanning a specific port range
- saving scan output to a file
- searching scan results with command-line tools
- storing a discovered value in an environment variable

---

## Learning Objectives

By the end of this lab, you should be able to:

- use Nmap for UDP scanning
- scan a selected range of UDP ports
- save Nmap output to a text file
- identify an open UDP port from saved results
- export a value into an environment variable

---

## Prerequisites

Before starting, make sure you have:

- Ubuntu, WSL, or another Linux environment
- `nmap` installed
- `grep` installed
- optional familiarity with `awk` or `sed`

You can check with:

```bash
nmap --version
grep --version
awk --version
sed --version
```

---

## Scenario

You are checking a local system for an unexpected UDP service.

Your task is to scan `localhost` for UDP ports between `9990` and `10000`, save the scan results, find the smallest open UDP port in that range, and store it in an environment variable named `OPEN_UDP_PORT`.

If no UDP port is open in the scanned range, set the variable to `NONE`.

---

## Step 1: Run a UDP scan on the target range

Run:

```bash
sudo nmap -sU -p 9990-10000 localhost
```

### Questions

- Why is sudo often needed for UDP scanning?
- What does `-sU` mean?
- Why is a port range useful here?

---

## Step 2: Save the scan output to a file

Run:

```bash
sudo nmap -sU -p 9990-10000 localhost > udp_scan_results.txt
```

This saves the scan results into `udp_scan_results.txt`.

---

## Step 3: View the saved file

Run:

```bash
cat udp_scan_results.txt
```

### Questions

- Does the file exist?
- Can you find any line marked as `open`?
- Is there an open UDP port in the scanned range?

---

## Step 4: Extract the open UDP port

You can search the file with:

```bash
grep open udp_scan_results.txt
```

If an open UDP port is found, extract the port number and store it in the environment variable:

```bash
export OPEN_UDP_PORT=$(grep open udp_scan_results.txt | awk -F/ '{print $1}' | sort -n | head -n 1)
```

If no port is open, set:

```bash
export OPEN_UDP_PORT=NONE
```

## Step 5: Verify the environment variable

Run:

```bash
echo $OPEN_UDP_PORT
```

### Questions

- Did the variable get set correctly?
- Does it show a UDP port number or `NONE`?
- Is the value the smallest open UDP port in the scanned range?

---

## Tasks

Complete the following tasks:

1. Run a UDP scan on `localhost`
2. Scan the range `9990-10000`
3. Save the output to `udp_scan_results.txt`
4. Identify the smallest open UDP port
5. Store the result in `OPEN_UDP_PORT`
6. Use `NONE` if no UDP port is open

---

## Expected Results

You should observe:

- Nmap scans UDP ports from `9990` to `10000`
- the output is saved in `udp_scan_results.txt`
- an open UDP port may appear in the results
- `OPEN_UDP_PORT` stores either the smallest open port number or `NONE`

Example terminal output may look similar to:

```
PORT     STATE SERVICE
9995/udp open  unknown
```

Example environment variable output:

```bash
echo $OPEN_UDP_PORT
9995
```

If no UDP port is open:

```bash
echo $OPEN_UDP_PORT
NONE
```

The exact result depends on your environment.

---

## Notes

The command:

```bash
sudo nmap -sU -p 9990-10000 localhost
```

means:

- `sudo` = run with elevated privileges
- `nmap` = run the network scanner
- `-sU` = perform a UDP scan
- `-p 9990-10000` = scan ports from `9990` to `10000`
- `localhost` = scan the local machine

The command:

```bash
sudo nmap -sU -p 9990-10000 localhost > udp_scan_results.txt
```

saves the UDP scan results into a text file so they can be reviewed and parsed later.

The command:

```bash
export OPEN_UDP_PORT=$(grep open udp_scan_results.txt | awk -F/ '{print $1}' | sort -n | head -n 1)
```

does the following:

- finds lines containing `open`
- extracts the port number before `/udp`
- sorts the results numerically
- keeps the smallest one
- stores it in `OPEN_UDP_PORT`

---

## Key Terms

- UDP = User Datagram Protocol, a connectionless network protocol
- Nmap = a network scanning tool
- `-sU` = Nmap option for UDP scanning
- port range = a sequence of ports scanned together
- open UDP port = a UDP port where a service is listening or responding
- environment variable = a shell variable available to commands and scripts
- grep = a tool for searching text
- awk = a tool for extracting and processing text fields

---

## Hints

- Use `sudo` when running a UDP scan
- Use `-sU` to tell Nmap to scan UDP ports
- Save the scan output before trying to parse it
- Use `grep open udp_scan_results.txt` to find matching lines quickly
- If there is no open UDP port, remember to set `OPEN_UDP_PORT=NONE`

---

## Extension Ideas

After finishing this lab, try:

```bash
sudo nmap -sU localhost
sudo nmap -sU -p 9995 localhost
sudo nmap -sU -oN udp_normal_scan.txt -p 9990-10000 localhost
```

These commands help you compare:

- wider UDP scanning
- scanning a single UDP port
- saving UDP results in normal text format

---
