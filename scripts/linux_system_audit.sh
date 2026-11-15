#!/usr/bin/env bash
# Read-only basic Linux inventory for the current machine.
# Review output before sharing; it may contain usernames, hostnames, and addresses.
set -u

section() {
  printf '\n===== %s =====\n' "$1"
}

section "Date"
date

section "Kernel and operating system"
uname -a
if [ -r /etc/os-release ]; then
  cat /etc/os-release
fi

section "Current user and groups"
id

section "Current directory and disk usage"
pwd
df -h

section "Memory"
if command -v free >/dev/null 2>&1; then free -h; fi

section "Network interfaces"
if command -v ip >/dev/null 2>&1; then
  ip -brief address
else
  echo "The 'ip' command is not installed."
fi

section "Listening sockets"
if command -v ss >/dev/null 2>&1; then
  ss -tuln
else
  echo "The 'ss' command is not installed."
fi

section "Running processes (top 15 by CPU)"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 16

section "Audit complete"
echo "This script performs local, read-only inventory. Review and redact output before publishing."
