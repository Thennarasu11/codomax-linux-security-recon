# 04 — Controlled Reconnaissance Lab

## Goal

Practice Linux system inspection, DNS information gathering, and basic service discovery without touching systems outside your control.

## Lab setup

Recommended:
- A Linux virtual machine (Ubuntu or Kali) on your own computer.
- A host-only or NAT virtual network.
- The Linux VM itself as the first scan target (`127.0.0.1`).
- Optional second VM owned by you, with its IP documented in the lab scope.

Do not bridge a lab VM to a college, office, or public network for scanning exercises.

## Exercise A — Linux inventory

From the repository root:

```bash
chmod +x scripts/linux_system_audit.sh
./scripts/linux_system_audit.sh
```

Review the output. Do not publish private hostnames, usernames, public IP addresses, serial numbers, or other sensitive environment details.

## Exercise B — DNS lookup

```bash
chmod +x scripts/dns_lookup.sh
./scripts/dns_lookup.sh example.com
```

For a real domain, replace `example.com` only with a domain you are authorized to investigate. Record the query type and returned result.

## Exercise C — Local service discovery

```bash
nmap -sV 127.0.0.1
```

Record open ports and detected services. A service being present is not necessarily a vulnerability. Investigate whether it is expected and appropriately configured.

## Exercise D — Packet analysis

1. Capture a short DNS lookup or connection to your own local test service in Wireshark.
2. Apply `dns` or `tcp` display filters.
3. Record protocol, source/destination addresses (redact private details before publishing), and a short explanation.
4. Stop capture and remove unrelated traffic.

## Exercise E — Web proxy observation

Use Burp Suite Community or OWASP ZAP with a local web application. Browse a few pages and record the request method, path, response status, and security-relevant headers. Do not submit real credentials or test production websites.

## Completion criteria

- [ ] Linux inventory command executed and reviewed.
- [ ] DNS lookup performed and recorded.
- [ ] Localhost Nmap scan performed and documented.
- [ ] Short authorized packet capture reviewed.
- [ ] Local web traffic inspected using Burp or ZAP.
- [ ] Findings and evidence templates completed.
- [ ] Sensitive data removed from screenshots and report.

## Stop conditions

Stop immediately if the target is outside the written scope, the system becomes unstable, unexpected sensitive data appears, or the owner requests testing to stop.
