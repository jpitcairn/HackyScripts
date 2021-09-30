#!/bin/bash
for user in `cat /usr/share/responder/logs/*.txt| cut -d ":" -f 1-3 | sort -u -f`
do
echo "[+] Removing duplicate hashes"
cat /usr/share/responder/logs/*.txt | grep -i $user | head -n 1 >> NetNTLMv2.hashes
done
