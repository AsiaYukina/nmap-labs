# Lab 03: Save Nmap Output to XML

## Overview

In this lab, you will use **Nmap** to scan a local service on `localhost` and save the results in **XML format**.

You will start a simple HTTP service on port `8080`, scan that port with Nmap, and export the scan results to an XML file. This kind of output is useful for documentation, automation, and later analysis.

This lab helps you practice:

- scanning a local target
- scanning a specific port
- using XML output with Nmap
- saving scan results to a file
- verifying that the output file was created successfully

---

## Learning Objectives

By the end of this lab, you should be able to:

- use Nmap to scan `localhost`
- scan a specific port with `-p`
- save Nmap output in XML format with `-oX`
- verify that the XML output file exists
- understand why structured scan output can be useful

---

## Prerequisites

Before starting, make sure you have:

- Ubuntu, WSL, or another Linux environment
- `nmap` installed
- `python3` installed

You can check with:

```bash
nmap --version
python3 --version
```

---

## Scenario

You need to document a local service running on your machine.

Your task is to scan localhost on port 8080 and save the Nmap results to an XML file for later review.

---

## Step 1: Start a local HTTP service on port 8080

Run the following command:

```bash
python3 -m http.server 8080
```

Keep this terminal open.

---

## Step 2: Scan port 8080 on localhost

Open a second terminal and run:

```bash
nmap -p 8080 localhost
```

### Questions:

- Is the host up?
- Is port 8080 open?
- What service does Nmap show? 

---

## Step 3: Save the Nmap output to an XML file

Run:

```bash
nmap -p 8080 -oX scan_report.xml localhost
```

This command scans port 8080 and saves the results in XML format.

---

## Step 4: View the saved XML file

Run:

```bash
cat scan_report.xml
```

### Questions:

- Does the file exist?
- Does it contain XML-formatted output?
- Can you find the port number in the file?

---

## Tasks

Complete the following tasks:

1. Start a local HTTP service on port 8080
2. Scan localhost on port 8080
3. Save the Nmap output as scan_report.xml
4. Confirm that the file exists
5. Review the XML output

---

## Expected Results

You should observe:

- `localhost` is up
- port `8080/tcp` is open
- the scan results are saved in `scan_report.xml`

Example output in the terminal may look similar to:

```
PORT     STATE SERVICE
8080/tcp open  http-proxy
```

The exact service label may vary depending on your environment.

The XML file should contain structured Nmap output, including details about the host and scanned port.

---

## Notes

The command:

```bash
nmap -p 8080 -oX scan_report.xml localhost
```

means:

- `nmap` = run the network scanner
- `-p 8080` = scan only port `8080`
- `-oX scan_report.xml` = save results in XML format
- `localhost` = scan the local machine

XML output is useful when scan results need to be:

- stored in a structured format
- parsed by scripts or tools
- included in reports or automation workflows

---

## Key Terms

- Nmap = a network scanning tool
- localhost = your own machine
- port = a numbered network entry point
- open port = a port where a service is listening
- XML = a structured text format used for storing and exchanging data
- `-oX` = the Nmap option for XML output

---

## Hints

- Make sure the HTTP server is running before scanning
- Use `-p 8080` to target the correct port
- Use `-oX` to save the scan in XML format
- Check the output file carefully after the scan finishes

---

## Extension Ideas

After finishing this lab, try:

```bash
nmap localhost
nmap -sV -p 8080 localhost
nmap -oN normal_scan.txt -p 8080 localhost
```

These commands help you compare:

- default scanning
- service version detection
- normal text output versus XML output

---
