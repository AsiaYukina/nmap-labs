# Lab 02: Find an Open Port on Localhost

## Overview

In this lab, you will use **Nmap** to identify an open port on the local machine (`localhost`).

You will start a dummy service on port `7777`, perform a full port scan, and save the scan output to a file. This lab helps you practice:

- scanning a local host
- scanning all ports
- identifying an open port
- saving Nmap output to a file
- verifying scan results

---

## Learning Objectives

By the end of this lab, you should be able to:

- use Nmap to scan `localhost`
- scan all ports with `-p-`
- identify an open port from scan results
- save scan output to a text file
- verify the scan findings

---

## Prerequisites

Before starting, make sure you have:

- Ubuntu, WSL, or another Linux environment
- `nmap` installed
- `nc` (netcat) installed

You can check with:

```bash
nmap --version
nc -h
```

---

## Scenario

A local test server is running on your machine, but the team does not know which port is open.

Your task is to use Nmap to scan localhost, identify the open port, and save the output to a file for documentation.

---

## Step 1: Start a dummy service on port 7777

Run the following command:

```bash
while true; do nc -n -lvp 7777; done &
```

This starts a local listening service on port `7777`.

---

## Step 2: Scan all ports on localhost

Run:

```bash
nmap -p- localhost
```

### Questions:

- Is the host up?
- Which port is open?
- Why is `-p-` useful in this lab?

---
---

## Step 3: Save the scan output to a file

Run:

```bash
nmap -p- localhost > localhost_full_scan.txt
```

This saves the scan output into a text file.

---

## Step 4: View the saved file

Run:

```bash
cat localhost_full_scan.txt
```

### Questions:

- Does the file exist?
- Does it contain the scan result?
- Which port is marked as open?

---

## Tasks

Complete the following tasks:

- Start a dummy service on port `7777`
- Use Nmap to scan `localhost`
- Scan all ports using `-p-`
- Save the output to `localhost_full_scan.txt`
- Confirm that port `7777` is open

---

## Expected Results

You should observe:

- `localhost` is up
- port `7777/tcp` is open
- the scan output is saved in `localhost_full_scan.txt`

Example output may look similar to:

```
Starting Nmap ...
Nmap scan report for localhost
Host is up (...)

PORT     STATE SERVICE
7777/tcp open  cbt
```

The exact service name may vary slightly depending on your environment.

---

## Notes

The command:

```bash
nmap -p- localhost
```

means:

- `nmap` = run the network scanner
- `-p-` = scan all ports
- `localhost` = scan the local machine

Saving output with:

```bash
nmap -p- localhost > localhost_full_scan.txt
```

is useful because it creates a record of the scan that can be reviewed later.

---

## Key Terms

- Nmap = a network scanning tool
- localhost = your own machine
- port = a numbered network entry point
- open port = a port where a service is listening
- dummy service = a simple test service used for practice
- netcat (nc) = a command-line tool for listening on or connecting to ports
- full port scan = scanning all available ports on a target host

---

## Hints

- Use the correct Nmap syntax to scan `localhost`
- Use `-p-` to scan all ports
- Check the saved output carefully to identify the open port
- Make sure the dummy service is running before scanning

---

## Extension Ideas

After finishing this lab, try:

```bash
nmap localhost
nmap -p 7777 localhost
nmap -sV -p 7777 localhost
```

These commands help you compare:

- default scanning
- scanning a specific port
- service version detection

---
