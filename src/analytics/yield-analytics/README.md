# yield-analytics

Service in the **analytics** domain of FactoryMind.

**Language:** Go · **Port:** 50281

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/yield-analytics/](../../../helm/charts/yield-analytics/) — Helm chart
- [manifests/analytics/yield-analytics/](../../../manifests/analytics/yield-analytics/) — Raw K8s manifests
