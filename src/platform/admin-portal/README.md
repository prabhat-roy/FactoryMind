# admin-portal

Service in the **platform** domain of FactoryMind.

**Language:** Go · **Port:** 50001

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/admin-portal/](../../../helm/charts/admin-portal/) — Helm chart
- [manifests/platform/admin-portal/](../../../manifests/platform/admin-portal/) — Raw K8s manifests
