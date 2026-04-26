# cycle-count

Service in the **warehouse** domain of FactoryMind.

**Language:** Go · **Port:** 50143

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/cycle-count/](../../../helm/charts/cycle-count/) — Helm chart
- [manifests/warehouse/cycle-count/](../../../manifests/warehouse/cycle-count/) — Raw K8s manifests
