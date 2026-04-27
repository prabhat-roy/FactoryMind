#!/usr/bin/env bash
set -euo pipefail
pact-provider-verifier https://pact-broker.factorymind.internal \
  --provider factorymind_identity_service \
  --provider-base-url http://identity-service.factorymind.svc:50060 \
  --provider-version "${GIT_SHA:-local}" \
  --publish-verification-results
