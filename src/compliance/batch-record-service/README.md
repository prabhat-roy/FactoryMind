# batch-record-service

Service in the **compliance** domain of FactoryMind.

**Language:** Go · **Port:** 50240

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/batch-record-service/](../../../helm/charts/batch-record-service/) — Helm chart
- [manifests/compliance/batch-record-service/](../../../manifests/compliance/batch-record-service/) — Raw K8s manifests
