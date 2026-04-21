# Lab 05: Uncover the Secret Port

## Overview

In this lab, you will use **Nmap** to discover a hidden service running on `localhost`.

A local service is listening on an unknown **5-digit port**, and your task is to find it by scanning all ports with increased verbosity. You will save the scan output to a text file and inspect the results to identify the correct port number.

This lab helps you practice:

- scanning all ports on a local host
- using verbose output with Nmap
- saving scan results to a file
- identifying a specific open port from scan output
- reviewing results from a command-line scan

---

## Learning Objectives

By the end of this lab, you should be able to:

- use Nmap to scan `localhost`
- scan all ports with `-p-`
- increase scan detail with `-v`
- save Nmap output to a text file
- identify an open 5-digit port from the saved results

---

## Prerequisites

Before starting, make sure you have:

- Ubuntu, WSL, or another Linux environment
- `nmap` installed
- basic familiarity with reading command-line output
- optional familiarity with `grep`

You can check with:

```bash
nmap --version
grep --version
```

---

## Scenario

A hidden local service is running on your machine, but you do not know which 5-digit port it is using.

Your task is to perform a verbose full-port scan on localhost, save the results to a file, and find the open 5-digit port number.

---

## Step 1: Run a verbose full-port scan

Run:

```bash
nmap -v -p- localhost
```

### Questions:

- Why does this scan take longer than a default Nmap scan?
- What does `-v` add to the output?
- What does `-p-` do?

---

## Step 2: Save the scan results to a file

Run:

```bash
nmap -v -p- localhost > scan_results.txt
```

This saves the full scan output into `scan_results.txt`.

---

## Step 3: View the saved file

Run:

```bash
cat scan_results.txt
```

### Questions:

- Does the file exist?
- Can you find the open port in the results?
- Is there exactly one open 5-digit port?

---

## Step 4: Search for open ports in the file

You can search more quickly with:

```bash
grep open scan_results.txt
```

This helps you locate the line that contains the open port.

---

## Tasks

Complete the following tasks:

1. Run an Nmap scan against localhost
2. Use `-v` to increase verbosity
3. Use `-p-` to scan all ports
4. Save the output to `scan_results.txt`
5. Identify the open 5-digit port number

---

## Expected Results

You should observe:

- `localhost` is up
- Nmap scans all ports
- the output is saved in `scan_results.txt`
- one open 5-digit port appears in the results

Example output may look similar to:

```
PORT      STATE SERVICE
20621/tcp open  unknown
```

The exact port number will depend on your environment.

---

## Notes

The command:

```bash
nmap -v -p- localhost
```

means:

- `nmap` = run the network scanner
- `-v` = increase verbosity
- `-p-` = scan all ports
- `localhost` = scan the local machine

The command:

```bash
nmap -v -p- localhost > scan_results.txt
```

does the same scan, but saves the output to a file for later review.

This is useful when:

- the scan output is long
- you want to review results carefully
- you need to document what was found

## Key Terms

- Nmap = a network scanning tool
- verbosity = extra detail shown in command output
- `-v` = Nmap option for verbose output
- `-p-` = Nmap option to scan all ports
- localhost = your own machine
- open port = a port where a service is listening
- 5-digit port = a port number between `10000` and `65535`

---

## Hints

- Use `-p-` to make sure all ports are scanned
- Use `-v` if you want more detailed output
- Save the scan to a file before searching through it
- Use grep open `scan_results.txt` to find open ports faster
- Look for a 5-digit number in the open port line

---

## Extension Ideas

After finishing this lab, try:

```bash
nmap localhost
nmap -p 10000-65535 localhost
nmap -sV -p- localhost
```

These commands help you compare:

- default scanning
- scanning only the high port range
- service version detection on all ports

---

