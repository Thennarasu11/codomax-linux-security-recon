#!/usr/bin/env bash
# Basic DNS record lookup. Use only for domains permitted by your lab scope.
set -u

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <authorized-domain>"
  exit 1
fi

domain="$1"

# Basic input validation; this is not a substitute for authorization.
if [[ ! "$domain" =~ ^[A-Za-z0-9.-]+$ ]]; then
  echo "Invalid domain format."
  exit 1
fi

if ! command -v dig >/dev/null 2>&1; then
  echo "The 'dig' command is required. Install dnsutils (Debian/Ubuntu) or bind-utils (Fedora/RHEL)."
  exit 1
fi

for record in A AAAA MX NS TXT SOA; do
  printf '\n===== %s record: %s =====\n' "$record" "$domain"
  dig +noall +answer "$domain" "$record"
done

echo
echo "Lookup complete. Confirm the domain was within your authorized scope."
