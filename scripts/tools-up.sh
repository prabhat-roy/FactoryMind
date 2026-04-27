#!/usr/bin/env bash
# One-shot deploy of every OSS tool registered for FactoryMind via ArgoCD.
set -euo pipefail
argocd app sync -l "project=factorymind-tools" --grpc-web
