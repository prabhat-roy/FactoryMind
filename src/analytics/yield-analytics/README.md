# yield-analytics

Service in the analytics domain of FactoryMind.

Language: Go Â· Port: 50281

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/yield-analytics/](../../../helm/charts/yield-analytics/) â€” Helm chart
- [manifests/analytics/yield-analytics/](../../../manifests/analytics/yield-analytics/) â€” Raw K8s manifests
