# sync-service

Service in the **erp-integration** domain of FactoryMind.

**Language:** Go · **Port:** 50262

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/sync-service/](../../../helm/charts/sync-service/) — Helm chart
- [manifests/erp-integration/sync-service/](../../../manifests/erp-integration/sync-service/) — Raw K8s manifests
