# e-signature-service

Service in the **identity** domain of FactoryMind.

**Language:** Go · **Port:** 50023

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/e-signature-service/](../../../helm/charts/e-signature-service/) — Helm chart
- [manifests/identity/e-signature-service/](../../../manifests/identity/e-signature-service/) — Raw K8s manifests
