#!/bin/bash

echo "========================================="
echo " Running Trivy Security Scan"
echo " Image: banking-app"
echo "========================================="

# Scan Docker image
trivy image --severity HIGH,CRITICAL banking-app

# Fail pipeline if critical vulnerabilities found
if [ $? -ne 0 ]; then
  echo "❌ Critical vulnerabilities found!"
  exit 1
else
  echo "✅ No critical vulnerabilities found."
fi
