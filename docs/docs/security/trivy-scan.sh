#!/bin/bash
set -e

IMAGE_NAME=$1

if [ -z "$IMAGE_NAME" ]; then
  echo "Usage: ./trivy-scan.sh <image-name>"
  exit 1
fi

echo "Scanning Docker image: $IMAGE_NAME"
trivy image --severity HIGH,CRITICAL $IMAGE_NAME

if [ $? -ne 0 ]; then
  echo "❌ Vulnerabilities found. Failing the pipeline."
  exit 1
fi

echo "✅ Image is secure. No high-risk vulnerabilities found."
