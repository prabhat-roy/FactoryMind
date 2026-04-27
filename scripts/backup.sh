#!/usr/bin/env bash
set -euo pipefail
NS="${1:-factorymind}"
TS=$(date -u +%Y%m%dT%H%M%S)
velero backup create "factorymind-$TS" --include-namespaces "$NS" --wait
