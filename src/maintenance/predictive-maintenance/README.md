# predictive-maintenance

Service in the maintenance domain of FactoryMind.

Language: Go Â· Port: 50100

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/predictive-maintenance/](../../../helm/charts/predictive-maintenance/) â€” Helm chart
- [manifests/maintenance/predictive-maintenance/](../../../manifests/maintenance/predictive-maintenance/) â€” Raw K8s manifests
