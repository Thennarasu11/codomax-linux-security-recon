# 05 — Practical Execution Checklist

Designed for Windows 11 users running Ubuntu in WSL2 or a virtual machine. Run all active tests only inside your own authorized lab.

## A. Prepare Ubuntu / WSL2

In PowerShell (Administrator):

    wsl --install -d Ubuntu

Open Ubuntu, create your Linux username/password, then run:

    sudo apt update
    sudo apt upgrade -y
    sudo apt install -y nmap dnsutils whois curl iproute2 net-tools

Install Wireshark, Burp Suite Community, and OWASP ZAP separately using their official vendor instructions. Use an isolated lab browser profile for proxy tools.

## B. Linux fundamentals

Run these commands inside Ubuntu and record what each one shows:

    pwd
    ls -lah /
    whoami
    id
    groups
    stat /etc/passwd
    ps aux | head
    ip -brief address
    ip route
    ss -tuln

For a disposable permissions exercise:

    mkdir -p ~/codomax-lab
    cd ~/codomax-lab
    printf 'Codomax permissions exercise\n' > sample.txt
    chmod 640 sample.txt
    ls -l sample.txt
    stat -c '%a %U %G %n' sample.txt

Expected permission mode: 640 (owner read/write, group read, others no access). Confirm the actual output.

## C. DNS information gathering

Use the reserved documentation domain example.com to learn command syntax:

    dig example.com A
    dig example.com AAAA
    dig example.com MX
    dig example.com NS
    dig example.com TXT
    nslookup example.com

Record the query, date/time, resolver, and actual response. example.com is a documentation example, not evidence of authorization to assess another domain. Use a real domain only when its owner has explicitly authorized the activity.

## D. Nmap local-only service discovery

Start with loopback:

    nmap -sV 127.0.0.1

This targets only the local machine. Record the exact command, date/time, detected ports/services, and Nmap version (nmap --version). An empty result is still a valid observation.

Do not scan college, employer, public IP ranges, or third-party systems without written authorization.

## E. Wireshark packet observation

1. Open Wireshark and select the loopback interface if supported.
2. Start a short capture.
3. In a terminal, run nslookup example.com or dig example.com A.
4. Stop the capture.
5. Apply the display filter: dns
6. Inspect the query and response fields.
7. Save only relevant evidence after checking for unrelated/private traffic.

If loopback capture is unsupported, use an isolated lab VM network interface and document the limitation. Never capture other people's traffic.

## F. Burp Suite Community / OWASP ZAP

Use a deliberately vulnerable training application or a web app you own, hosted locally or in an isolated lab.

1. Start the local application and note its local URL.
2. Open Burp Suite Community or OWASP ZAP.
3. Configure a dedicated browser profile to use the proxy listener.
4. Browse the local application.
5. Record one ordinary GET request, response status, and selected security headers.
6. Review passive alerts first. Run active scans only against the local lab application.
7. Remove proxy settings from the browser after the exercise.

Do not submit real credentials, tokens, or personal information.

## G. Capture evidence

For every experiment, include:
- Screenshot showing the command/tool and its output.
- One or two sentences explaining what was observed.
- Tool and version.
- Date/time.
- Target and proof it was within the lab scope.

Redact usernames, hostnames, IP addresses, cookies, tokens, and unrelated data before uploading screenshots to a public repository.

## H. Final verification

- [ ] Linux command exercises completed.
- [ ] Permission exercise produced mode 640.
- [ ] DNS record queries run and documented.
- [ ] Nmap localhost scan run and documented.
- [ ] Wireshark DNS capture inspected.
- [ ] Burp Suite or ZAP used against a local application.
- [ ] Evidence screenshots redacted.
- [ ] Findings report updated with actual observations only.
