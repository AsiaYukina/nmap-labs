# Lab 07: Identify Linux Server Version

## Overview

In this lab, you will use **Nmap** with OS detection to identify the operating system of `localhost`.

Your task is to run an Nmap scan with OS detection enabled, save the results to a file, and review the output to determine the system version. This type of scan is useful when you need to collect basic host information during reconnaissance or security assessment.

This lab helps you practice:

- using OS detection in Nmap
- scanning `localhost`
- saving scan output to a file
- reviewing results to identify the operating system
- working with a common Nmap detection option

---

## Learning Objectives

By the end of this lab, you should be able to:

- use Nmap with `-O` for OS detection
- scan `localhost` from the command line
- save scan results to a text file
- read Nmap output and identify OS details
- understand when OS detection can be useful

---

## Prerequisites

Before starting, make sure you have:

- Ubuntu, WSL, or another Linux environment
- `nmap` installed
- basic familiarity with terminal commands

You can check with:

```bash
nmap --version
```

---

## Scenario

You are investigating a local machine and need to identify its operating system for basic system profiling.

Your task is to scan `localhost` with OS detection enabled, save the output to a file named `target_os.txt`, and review the results to identify the detected Linux version.

---

## Step 1: Run an OS detection scan

Run:

```bash
sudo nmap -O localhost
```

### Questions

- Why is sudo often needed for OS detection?
- What does the `-O` option do?
- What kind of details does Nmap try to identify?

---

## Step 2: Save the scan output to a file

Run:

```bash
sudo nmap -O localhost > target_os.txt
```

This saves the scan output into `target_os.txt`.

---

## Step 3: View the saved file

Run:

```bash
cat target_os.txt
```

### Questions

- Does the file exist?
- Can you find any OS-related information in the output?
- Does Nmap identify the system as Linux?

---

## Tasks

Complete the following tasks:

1. Run an Nmap scan against `localhost`
2. Enable OS detection with `-O`
3. Save the scan output to `target_os.txt`
4. Review the saved file
5. Identify the detected operating system

---

## Expected Results

You should observe:

- `localhost` is up
- Nmap performs OS detection
- the results are saved in `target_os.txt`
- the output may include Linux OS details

Example output may look similar to:

```
Starting Nmap ...
Nmap scan report for localhost (127.0.0.1)
Host is up (0.000024s latency).
OS details: Linux 5.4.0-42-generic
```

The exact kernel version or OS details may vary depending on your environment.

---

## Notes

The command:

```bash
sudo nmap -O localhost
```

means:

- `sudo` = run with elevated privileges
- `nmap` = run the network scanner
- `-O` = enable OS detection
- `localhost` = scan the local machine

The command:

```bash
sudo nmap -O localhost > target_os.txt
```

runs the same scan, but saves the results into a file for later review.

OS detection can be useful when you need to:

- identify the operating system of a target host
- collect host information during reconnaissance
- document scan results for analysis or reporting

---

## Key Terms

- Nmap = a network scanning tool
- OS detection = identifying the operating system of a target host
- `-O` = Nmap option for OS detection
- `localhost` = your own machine
- scan output = the text result produced by the scan
- kernel version = the version of the operating system kernel detected in the scan output

---

## Hints

- Use `sudo` when running OS detection scans
- Use `-O` to enable operating system detection
- Save the scan results before reviewing them
- Use `cat target_os.txt` to inspect the output
- Look for lines containing OS details

---

## Extension Ideas

After finishing this lab, try:

```bash
nmap localhost
sudo nmap -O -v localhost
sudo nmap -A localhost
```

These commands help you compare:

- a basic scan without OS detection
- verbose OS detection
- aggressive scanning with additional detection features

---
