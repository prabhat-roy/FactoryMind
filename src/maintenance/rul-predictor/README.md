# rul-predictor

Service in the maintenance domain of FactoryMind.

Language: Go Â· Port: 50103

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/rul-predictor/](../../../helm/charts/rul-predictor/) â€” Helm chart
- [manifests/maintenance/rul-predictor/](../../../manifests/maintenance/rul-predictor/) â€” Raw K8s manifests
