# cmms-service

Service in the **maintenance** domain of FactoryMind.

**Language:** Go · **Port:** 50102

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/cmms-service/](../../../helm/charts/cmms-service/) — Helm chart
- [manifests/maintenance/cmms-service/](../../../manifests/maintenance/cmms-service/) — Raw K8s manifests
