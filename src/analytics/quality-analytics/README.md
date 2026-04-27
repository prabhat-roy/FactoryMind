# quality-analytics

Service in the analytics domain of FactoryMind.

Language: Go Â· Port: 50282

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/quality-analytics/](../../../helm/charts/quality-analytics/) â€” Helm chart
- [manifests/analytics/quality-analytics/](../../../manifests/analytics/quality-analytics/) â€” Raw K8s manifests
