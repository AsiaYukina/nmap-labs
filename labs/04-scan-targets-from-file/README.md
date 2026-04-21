# Lab 04: Scan Targets from a File

## Overview

In this lab, you will use **Nmap** to perform a ping sweep on a list of target IP addresses stored in a file.

You will scan multiple local targets, identify which hosts are online, and save the active IP addresses to a separate text file. This lab is useful for learning how to work with file-based input in Nmap and how to extract relevant results from command-line output.

This lab helps you practice:

- reading scan targets from a file
- performing a ping sweep
- identifying active hosts
- extracting useful output
- saving results to a text file

---

## Learning Objectives

By the end of this lab, you should be able to:

- use Nmap with `-iL` to read targets from a file
- perform a ping sweep against multiple IP addresses
- identify which hosts are online
- save active host IPs into a separate file
- work with Nmap output in a practical way

---

## Prerequisites

Before starting, make sure you have:

- Ubuntu, WSL, or another Linux environment
- `nmap` installed
- basic familiarity with command-line text files
- optional familiarity with `grep` and `awk`

You can check with:

```bash
nmap --version
grep --version
awk --version
```

---

## Scenario

You have been given a file that contains a list of target IP addresses.

Your task is to use Nmap to check which hosts are online and save the online IP addresses into a new file for later review.

---

## Step 1: Create the target file

Create a file named targets.txt with sample local IP addresses:

```bash
printf "127.0.0.1\n127.0.0.2\n127.0.0.3\n" > targets.txt
```

Display the file:

```bash
cat targets.txt
```

You should see something similar to:

```
127.0.0.1
127.0.0.2
127.0.0.3
```

---

## Step 2: Run a ping sweep using the file

Run:

```bash
nmap -sn -iL targets.txt
```

### Questions:

- Which IP addresses appear as online?
- What does the `-iL` option do?
- Why is `-sn` useful here?

---

## Step 3: Save online hosts to a new file

Run:

```bash
nmap -sn -iL targets.txt | grep "Nmap scan report for" | awk '{print $5}' > online_hosts.txt
```

This command performs the scan and saves only the discovered host IP addresses into `online_hosts.txt`.

---

## Step 4: View the saved file

Run:

```bash
cat online_hosts.txt
```

### Questions:

- Does the file exist?
- Does each IP appear on a separate line?
- Which hosts were saved as online?

---

## Tasks

Complete the following tasks:

1. Create a file named targets.txt
2. Add multiple target IP addresses to the file
3. Use Nmap to perform a ping sweep with -iL
4. Save the online host IP addresses into online_hosts.txt
5. Confirm that each IP is written on a new line

---

## Expected Results

You should observe:

- Nmap reads targets from `targets.txt`
- at least some local addresses may respond as online
- `online_hosts.txt` is created
- each discovered IP address is written on a separate line

Example input file:

```
127.0.0.1
127.0.0.2
127.0.0.3
```

Example output file:

```
127.0.0.1
127.0.0.2
```

The exact results may vary depending on your local environment.

---

## Notes

The command:

```bash
nmap -sn -iL targets.txt
```

means:

- `nmap` = run the network scanner
- `-sn` = ping sweep only, without port scanning
- `-iL targets.txt` = read targets from the file `targets.txt`

The command:

```bash
nmap -sn -iL targets.txt | grep "Nmap scan report for" | awk '{print $5}' > online_hosts.txt
```

does the following:

- runs the ping sweep
- filters lines that contain scan report results
- extracts the IP address field
- saves the IP addresses into `online_hosts.txt`

This is useful when you want a clean list of active hosts.

---

## Key Terms

- Nmap = a network scanning tool
- ping sweep = checking which hosts are online
- target file = a file containing IP addresses or hosts to scan
- `-iL` = Nmap option to read targets from a file
- `-sn` = Nmap option for host discovery without port scanning
- `grep` = command-line tool for filtering text
- `awk` = command-line tool for extracting and processing text fields

---

## Hints

- Use `-iL` to tell Nmap to read targets from a file
- Use `-sn` if you only want to know which hosts are online
- Check the output carefully before saving results
- If needed, you can manually copy the active IP addresses into `online_hosts.txt`

---

## Extension Ideas

After finishing this lab, try:

```bash
nmap -iL targets.txt
nmap -sn localhost
nmap -oN host_discovery.txt -sn -iL targets.txt
```

These commands help you compare:

- host discovery only
- scanning a single local target
- saving host discovery results in normal text format

---
