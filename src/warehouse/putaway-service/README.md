# putaway-service

Service in the **warehouse** domain of FactoryMind.

**Language:** Go · **Port:** 50142

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/putaway-service/](../../../helm/charts/putaway-service/) — Helm chart
- [manifests/warehouse/putaway-service/](../../../manifests/warehouse/putaway-service/) — Raw K8s manifests
