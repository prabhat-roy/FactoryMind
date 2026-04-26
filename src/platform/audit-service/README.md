# audit-service

Service in the **platform** domain of FactoryMind.

**Language:** Go · **Port:** 50002

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/audit-service/](../../../helm/charts/audit-service/) — Helm chart
- [manifests/platform/audit-service/](../../../manifests/platform/audit-service/) — Raw K8s manifests
