# 03 — Essential Security Tools

## 1. Nmap

Nmap is a network discovery and security auditing tool. Use it only against systems in your approved lab scope.

Safe starting examples:

```bash
nmap -sV 127.0.0.1
nmap -p 22,80,443 127.0.0.1
```

- `-sV` attempts service/version detection on discovered ports.
- `-p` selects specific ports.
- `127.0.0.1` is the local loopback address.

Do not use broad public ranges or stealth/evasion options for this beginner lab. Record the target, time, command, and output.

## 2. Wireshark

Wireshark captures and analyzes packets.

Basic workflow:
1. Open Wireshark.
2. Select an interface you are authorized to monitor.
3. Start a short capture while generating ordinary test traffic to your own lab service.
4. Stop the capture and save only the evidence needed.
5. Apply display filters to inspect relevant protocols.

Useful display filters:

```text
dns
http
tcp
tcp.port == 443
ip.addr == 127.0.0.1
```

Encrypted HTTPS payloads are generally not readable as plain HTTP without appropriate authorized decryption setup. Do not capture other people's traffic.

## 3. Burp Suite Community

Burp Suite is an intercepting proxy used to inspect web traffic during authorized application testing.

Beginner workflow:
1. Start a local deliberately vulnerable training app or your own local web application.
2. Launch Burp Suite Community.
3. Configure a dedicated browser to use Burp's local proxy listener.
4. Visit the local application.
5. Inspect requests and responses in Proxy/HTTP history.
6. Do not test real accounts or production systems without written approval.

Use a separate browser profile and remove proxy settings after the exercise.

## 4. OWASP ZAP

OWASP ZAP is an open-source web application security testing proxy.

Safe beginner workflow:
1. Start an application on your own machine or an isolated lab VM.
2. Open ZAP and configure the browser/proxy.
3. Browse the local application to build the site tree.
4. Review passive alerts first.
5. Use active scanning only against the local lab target and only when permitted.
6. Review alerts manually; automated findings can be false positives.

## 5. Tool comparison

| Tool | Main purpose |
|---|---|
| Nmap | Host, port, and service discovery |
| Wireshark | Packet capture and protocol analysis |
| Burp Suite | Web request/response inspection and testing |
| OWASP ZAP | Web application security testing |
| dig / nslookup | DNS queries |
| whois | Domain registration information, where available |

## 6. Reporting responsibly

For each observation, record the asset, evidence, impact, confidence, and recommended remediation. Avoid reporting a tool alert as a confirmed vulnerability until it has been manually validated.
