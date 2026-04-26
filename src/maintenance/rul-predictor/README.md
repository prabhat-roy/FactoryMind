# rul-predictor

Service in the **maintenance** domain of FactoryMind.

**Language:** Go · **Port:** 50103

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rul-predictor/](../../../helm/charts/rul-predictor/) — Helm chart
- [manifests/maintenance/rul-predictor/](../../../manifests/maintenance/rul-predictor/) — Raw K8s manifests
