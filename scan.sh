#!/usr/bin/env bash

set -euo pipefail

TAG="my-custom-debian-image"

docker build --tag "${TAG}" .

echo ""

trivy image "${TAG}" --severity HIGH,CRITICAL --exit-code 1
