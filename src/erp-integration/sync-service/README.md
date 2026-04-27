# sync-service

Service in the erp-integration domain of FactoryMind.

Language: Go Â· Port: 50262

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/sync-service/](../../../helm/charts/sync-service/) â€” Helm chart
- [manifests/erp-integration/sync-service/](../../../manifests/erp-integration/sync-service/) â€” Raw K8s manifests
