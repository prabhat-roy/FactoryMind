# bom-service

Service in the **plm** domain of FactoryMind.

**Language:** Go · **Port:** 50180

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/bom-service/](../../../helm/charts/bom-service/) — Helm chart
- [manifests/plm/bom-service/](../../../manifests/plm/bom-service/) — Raw K8s manifests
