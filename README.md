# Linux, Security Tools & Reconnaissance

**Codomax Digital Solutions — Internship Module**  
**Topic:** Linux, Security Tools & Reconnaissance

A beginner-friendly learning and practical-lab repository covering Linux fundamentals, passive and active reconnaissance, domain/DNS information gathering, network enumeration, and introductory use of Nmap, Wireshark, Burp Suite, and OWASP ZAP.

> **Safety first:** Run active scans only against systems you own or have explicit written permission to test. The examples default to localhost or a deliberately configured lab. Do not scan public IP addresses, college/company networks, or third-party domains without authorization.

## Repository structure

```text
codomax-linux-security-recon/
├── README.md
├── LICENSE
├── .gitignore
├── docs/
│   ├── 01-linux-fundamentals.md
│   ├── 02-reconnaissance.md
│   ├── 03-security-tools.md
│   └── 04-lab-guide.md
├── labs/
│   ├── evidence-template.md
│   └── findings-template.md
└── scripts/
    ├── linux_system_audit.sh
    └── dns_lookup.sh
```

## Learning objectives

1. Understand Linux files, directories, permissions, users, groups, processes, and basic security.
2. Explain passive versus active reconnaissance.
3. Gather domain and DNS information responsibly.
4. Understand network enumeration and common service ports.
5. Become familiar with Nmap, Wireshark, Burp Suite, and OWASP ZAP.
6. Build a controlled lab and document observations and findings.

## Suggested five-day plan

| Day | Focus | Output |
|---|---|---|
| 1 | Linux filesystem, users, permissions, processes | Linux command notes |
| 2 | Passive reconnaissance and DNS | Domain/DNS worksheet for an authorized domain |
| 3 | Active reconnaissance and Nmap | Local lab scan notes |
| 4 | Wireshark, Burp Suite, OWASP ZAP | Tool observations from a local test app |
| 5 | Controlled lab and documentation | Findings report and evidence |

## Quick start

On an Ubuntu/Debian-based lab VM:

```bash
sudo apt update
sudo apt install -y nmap dnsutils whois wireshark curl
```

Make the scripts executable:

```bash
chmod +x scripts/*.sh
```

Run the local system inventory:

```bash
./scripts/linux_system_audit.sh
```

Run a DNS lookup for a domain you are authorized to investigate:

```bash
./scripts/dns_lookup.sh example.com
```

For active scanning, begin with the local machine:

```bash
nmap -sV 127.0.0.1
```

## Tools covered

- **Nmap:** host discovery and port/service enumeration in an authorized lab.
- **Wireshark:** packet capture and protocol analysis.
- **Burp Suite Community:** inspect and test HTTP requests to a local training application.
- **OWASP ZAP:** baseline web application security testing against a local training application.
- **dig / nslookup / whois:** domain and DNS information gathering.

## Deliverables

- Learning documentation in `docs/`.
- Reproducible, safe scripts in `scripts/`.
- Evidence and findings templates in `labs/`.

Complete the templates with your own lab outputs and screenshots. Do not claim a scan or test was performed unless you actually ran it.

## Disclaimer

This repository is for education and authorized defensive security testing only. The author is not responsible for misuse. Always obtain permission, define scope, and follow applicable laws and organizational policies.
