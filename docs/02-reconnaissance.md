# 02 — Reconnaissance

## 1. Definition

Reconnaissance is the information-gathering phase of a security assessment. Its purpose is to understand the authorized target and its exposed assets before deeper testing.

## 2. Passive vs active reconnaissance

| Type | Description | Examples |
|---|---|---|
| Passive | Uses information already publicly available or collected without directly probing the target infrastructure | public DNS records, certificate transparency search, public documentation, search engines |
| Active | Sends traffic or queries to target infrastructure to discover information | port scans, service detection, direct DNS queries, web crawling |

Passive does not automatically mean risk-free: follow privacy, terms-of-use, and engagement rules. Active techniques require explicit authorization and a defined scope.

## 3. Domain and DNS information

DNS translates names into records used by networked services.

Common record types:

- `A`: hostname to IPv4 address.
- `AAAA`: hostname to IPv6 address.
- `CNAME`: alias to another hostname.
- `MX`: mail exchanger.
- `NS`: authoritative name servers.
- `TXT`: text data, often used for verification and email-security policies.
- `SOA`: start-of-authority information for a DNS zone.

Example commands for an authorized domain:

```bash
dig example.com A
dig example.com AAAA
dig example.com MX
dig example.com NS
dig example.com TXT
nslookup example.com
whois example.com
```

Use a domain explicitly approved for the exercise. `example.com` is reserved for documentation and is suitable for demonstrating syntax, not for making claims about a real assessment.

## 4. Network enumeration concepts

Network enumeration identifies reachable hosts, open ports, and services. A port being open does not by itself prove a vulnerability.

Common ports include:

| Port | Service |
|---:|---|
| 22 | SSH |
| 25 | SMTP |
| 53 | DNS |
| 80 | HTTP |
| 110 | POP3 |
| 143 | IMAP |
| 443 | HTTPS |
| 3306 | MySQL |
| 3389 | Remote Desktop Protocol |

## 5. Scope and authorization checklist

Before any active test, document:

- Asset owner and written permission.
- Exact IP addresses, hostnames, and applications in scope.
- Testing window and rate limits.
- Prohibited tests and escalation contact.
- Data handling and evidence retention rules.
- Stop conditions and reporting process.

If any item is unclear, do not scan. Ask the system owner for clarification.
