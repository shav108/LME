#!/bin/bash

HOST="http://10.254.255.20"

EXPECTED_FINGERPRINT="539711588D35CF5A9688E79767B7069ED45677013AAFFB6B548F813BF0D0C685"

ACTUAL_FINGERPRINT=$(echo | openssl s_client -servername $HOST -connect $HOST:443 2>/dev/null | openssl x509 -noout -fingerprint -sha256 | cut -d '=' -f2-)
echo $ACTUAL_FINGERPRINT

if [ "$ACTUAL_FINGERPRINT" == "$EXPECTED_FINGERPRINT" ]; then
    echo "Fingerprints match."
else
    echo "Fingerprints do not match."
fi
