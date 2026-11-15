# 01 — Linux Fundamentals

## 1. Linux overview

Linux is an open-source, Unix-like operating system kernel used by servers, desktops, embedded devices, and security-testing distributions. A Linux distribution combines the kernel with system utilities, package management, and applications.

## 2. Filesystem and directories

Linux uses a hierarchical filesystem rooted at `/`.

| Path | Purpose |
|---|---|
| `/` | Filesystem root |
| `/home` | Regular users' home directories |
| `/root` | Root user's home directory |
| `/etc` | System-wide configuration |
| `/var` | Variable data such as logs |
| `/tmp` | Temporary files |
| `/usr` | User-space programs and libraries |
| `/bin` and `/sbin` | Essential commands and administration utilities (layout varies by distribution) |
| `/dev` | Device files |
| `/proc` | Virtual process and kernel information |
| `/opt` | Optional third-party software |

Useful commands:

```bash
pwd                 # print current directory
ls -lah             # list files, including hidden files, with details
cd /etc             # change directory
mkdir practice      # create directory
touch notes.txt     # create empty file
cp notes.txt copy.txt
mv copy.txt archive.txt
cat notes.txt
less /var/log/syslog
find . -name "*.txt"
```

## 3. Users and groups

Linux permissions and ownership help control access.

```bash
whoami              # current username
id                  # user and group IDs
groups              # groups for current user
getent passwd       # account database entries
getent group        # group database entries
```

Use `sudo` only when required and understand the command before running it. Avoid logging in as root for routine work.

## 4. File permissions

Permissions are represented for user, group, and others. The common permissions are read (`r`), write (`w`), and execute (`x`).

```bash
ls -l file.txt
chmod 640 file.txt
chmod u+x script.sh
chown user:group file.txt
```

Numeric permissions: read = 4, write = 2, execute = 1. For example, `640` means owner read/write, group read, others no access.

Avoid broad permissions such as `chmod -R 777` because they grant unnecessary access.

## 5. Processes and services

```bash
ps aux              # process list
top                 # live process monitor
pgrep ssh           # find process by name
systemctl status ssh
systemctl --type=service --state=running
```

Terminate only processes you own or are authorized to manage. Check what a process does before stopping it.

## 6. Networking basics

```bash
ip addr             # network interfaces and addresses
ip route            # routing table
ss -tulpen          # listening TCP/UDP sockets (some details need elevated privileges)
hostname
```

## 7. Logs and basic hardening

- Review authentication and system logs appropriate to your distribution.
- Apply security updates regularly.
- Use unique passwords and multi-factor authentication where available.
- Disable services that are not required.
- Prefer SSH keys and disable password-based remote login only after confirming recovery access.
- Keep firewall rules minimal and documented.
- Back up important data and test restoration.

## 8. Knowledge check

1. What is the purpose of `/etc`?
2. What does `chmod 640 file.txt` mean?
3. How do `ps` and `top` differ?
4. Why should routine work avoid the root account?
5. Which command displays IP addresses on a modern Linux system?
