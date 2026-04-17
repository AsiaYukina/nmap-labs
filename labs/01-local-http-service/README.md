# Lab 01: Discover a Local Web Service with Nmap

## Overview

In this lab, you will learn how to use **Nmap** to discover an open port on your local machine and identify the service running on that port.

You will start a simple Python HTTP server on port `8000`, then use Nmap to:

- scan `localhost`
- identify the open port
- scan a specific port
- detect the service version
- save scan results to a file

This is a safe beginner lab because you are scanning your own local machine.

---

## Learning Objectives

By the end of this lab, you should be able to:

- explain what a **port** is
- explain what an **open port** means
- run a basic Nmap scan
- scan a specific port with `-p`
- detect a service version with `-sV`
- save output to a file with `-oN`

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

You are a beginner cybersecurity analyst.

A developer says a local web service is running on the machine, but they do not remember which port it is using.

Your task is to use Nmap to discover the open port and identify the service.

---

## Lab Setup

Open a terminal and move into this lab directory.

Then run:

```bash
bash setup.sh
```
---

## Step 1: Start the local HTTP server

In the first terminal, run:

```bash
python3 -m http.server 8000
```
You should see output similar to:

```text
Serving HTTP on 0.0.0.0 port 8000 (http://0.0.0.0:8000/) ...
```
---

## Step 2: Scan localhost

Open a second terminal in the same lab directory and run:

```bash
nmap localhost
```
Questions
Is the host up?
Which port is open?

---

## Step 3: Scan only port 8000

Run:

```bash
nmap -p 8000 localhost
```

Questions
What is the state of port 8000?
What service name does Nmap guess?

---

## Step 4: Detect the service version

Run:

```bash
nmap -sV localhost
```

Questions
What extra information appears now?
What service version does Nmap detect?

---

## Step 5: Save scan results

Run:

```bash
nmap -oN result.txt localhost
```

Then display the saved file:

```bash
cat result.txt
```
---

## Tasks

Complete the following tasks:

1. Start the local Python HTTP server on port `8000`
2. Scan `localhost`
3. Scan only port `8000`
4. Detect the service version
5. Save the scan results in `result.txt`

---

## Expected Results

You should observe:

- `localhost` is up
- `8000/tcp` is open
- the service is identified as HTTP
- `-sV` detects a Python HTTP service
- scan results are saved in `result.txt`

Example output may look similar to:

```text
PORT     STATE SERVICE VERSION
8000/tcp open  http    SimpleHTTPServer 0.6 (Python 3.12.3)
```

The exact version text may differ slightly depending on your Python version.

---

##Notes

While running `nmap -sV localhost`, the Python HTTP server may display messages such as:

- `Connection reset by peer`
- `404 File not found`
- `Unsupported method`

This is normal.

Nmap sends different test requests, called probes, to identify the service and its version. Those extra requests may confuse a very simple HTTP server, but this does not mean the lab is broken.

---

## Verification

After completing the tasks, run:

```bash
bash check.sh
```
If everything is correct, you should see a success message.

---

## Cleanup

When you are finished:

- Go back to the terminal running the Python HTTP server
- Press `Ctrl + C` to stop it

You can also run:
 ```bash
bash cleanup.sh
```
---

## Key Terms

- Nmap = a network scanning tool
- host = a computer or device
- localhost = your own machine
- port = a numbered network entry point
- open port = a port where a service is listening
- service detection = identifying what program is running on a port
- version detection = identifying the software version of the service

---

## Extension Ideas

After finishing this lab, try:

```bash
nmap -sC localhost
nmap -A localhost
nmap -oX result.xml localhost
nmap -oG result.grep localhost
```

These commands introduce:

- default scripts
- aggressive scanning
- XML output
- grepable output

---
