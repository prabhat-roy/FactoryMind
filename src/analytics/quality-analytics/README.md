# quality-analytics

Service in the **analytics** domain of FactoryMind.

**Language:** Go · **Port:** 50282

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/quality-analytics/](../../../helm/charts/quality-analytics/) — Helm chart
- [manifests/analytics/quality-analytics/](../../../manifests/analytics/quality-analytics/) — Raw K8s manifests
