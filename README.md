# Linux, Security Tools & Reconnaissance

**Codomax Digital Solutions — Internship Module**  
**Student:** M. Thennarasu

A beginner-friendly learning and practical-lab repository covering Linux fundamentals, passive and active reconnaissance, DNS information gathering, network enumeration, and introductory use of Nmap, Wireshark, Burp Suite, and OWASP ZAP.

> **Safety first:** Run active scans only against systems you own or have explicit written permission to test. The practical examples default to localhost or a deliberately configured lab. Do not scan public IP addresses, college/company networks, or third-party domains without authorization.

## Repository structure

```text
codomax-linux-security-recon/
├── README.md
├── LINKEDIN_POST.md
├── SUBMISSION_STATUS.md
├── LICENSE
├── .gitignore
├── docs/
│   ├── 01-linux-fundamentals.md
│   ├── 02-reconnaissance.md
│   ├── 03-security-tools.md
│   ├── 04-lab-guide.md
│   └── 05-practical-execution-checklist.md
├── labs/
│   ├── evidence-template.md
│   ├── findings-template.md
│   └── practical-report.md
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

## Five-day plan

| Day | Focus | Output |
|---|---|---|
| 1 | Linux filesystem, users, permissions, processes | Linux command notes |
| 2 | Passive reconnaissance and DNS | DNS worksheet |
| 3 | Active reconnaissance and Nmap | Local lab scan notes |
| 4 | Wireshark, Burp Suite, OWASP ZAP | Local test-app observations |
| 5 | Controlled lab and documentation | Findings report and evidence |

## Quick start

On an Ubuntu/Debian-based lab VM:

```bash
sudo apt update
sudo apt install -y nmap dnsutils whois wireshark curl
chmod +x scripts/*.sh
./scripts/linux_system_audit.sh
./scripts/dns_lookup.sh example.com
nmap -sV 127.0.0.1
```

Use example.com only as a documentation example for learning DNS syntax. Use a real domain for assessment only when its owner has explicitly authorized the activity.

## Documentation

- [Linux fundamentals](docs/01-linux-fundamentals.md)
- [Reconnaissance and DNS](docs/02-reconnaissance.md)
- [Security tools](docs/03-security-tools.md)
- [Controlled lab guide](docs/04-lab-guide.md)
- [Practical execution checklist](docs/05-practical-execution-checklist.md)
- [Practical report worksheet](labs/practical-report.md)
- [Evidence log template](labs/evidence-template.md)
- [Findings report template](labs/findings-template.md)
- [LinkedIn post draft](LINKEDIN_POST.md)
- [Submission status](SUBMISSION_STATUS.md)

## Important

The documentation and scripts are prepared in this repository. Complete the practical exercises on your own authorized lab machine, replace report placeholders with actual observations, and add redacted screenshots. Do not claim tests were performed unless you actually ran them.

## Disclaimer

This repository is for education and authorized defensive security testing only. Always obtain permission, define scope, and follow applicable laws and organizational policies.
