# vibration-monitoring

Service in the maintenance domain of FactoryMind.

Language: Go Â· Port: 50101

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/vibration-monitoring/](../../../helm/charts/vibration-monitoring/) â€” Helm chart
- [manifests/maintenance/vibration-monitoring/](../../../manifests/maintenance/vibration-monitoring/) â€” Raw K8s manifests
