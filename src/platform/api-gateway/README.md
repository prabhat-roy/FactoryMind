# api-gateway

Edge ingress for FactoryMind IT-side traffic. Terminates TLS (mTLS optional with Istio),
authenticates via OIDC (Keycloak), enforces per-client rate limits, and routes to BFFs and
domain services. Adds OTel trace context and request-id headers.

- Language: Go 1.24
- Port: 8080 (HTTP), 9090 (Prometheus)
- Auth: OAuth2 + JWT introspection
- Compliance: IEC 62443 zone gateway between IT clients and service mesh

## Endpoints
- `/healthz` liveness
- `/readyz` readiness (checks downstream MES BFF, identity)
- `/metrics` Prometheus
- `/v1/...` proxied to internal services
