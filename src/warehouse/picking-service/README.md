# picking-service

Service in the **warehouse** domain of FactoryMind.

**Language:** Go · **Port:** 50141

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/picking-service/](../../../helm/charts/picking-service/) — Helm chart
- [manifests/warehouse/picking-service/](../../../manifests/warehouse/picking-service/) — Raw K8s manifests
