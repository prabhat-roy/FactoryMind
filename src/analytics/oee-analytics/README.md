# oee-analytics

Service in the **analytics** domain of FactoryMind.

**Language:** Go · **Port:** 50280

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/oee-analytics/](../../../helm/charts/oee-analytics/) — Helm chart
- [manifests/analytics/oee-analytics/](../../../manifests/analytics/oee-analytics/) — Raw K8s manifests
