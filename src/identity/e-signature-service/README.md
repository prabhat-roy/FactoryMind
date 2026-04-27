# e-signature-service

Service in the identity domain of FactoryMind.

Language: Go Â· Port: 50023

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/e-signature-service/](../../../helm/charts/e-signature-service/) â€” Helm chart
- [manifests/identity/e-signature-service/](../../../manifests/identity/e-signature-service/) â€” Raw K8s manifests
