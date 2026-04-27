# wms-service

Service in the warehouse domain of FactoryMind.

Language: Go Â· Port: 50140

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/wms-service/](../../../helm/charts/wms-service/) â€” Helm chart
- [manifests/warehouse/wms-service/](../../../manifests/warehouse/wms-service/) â€” Raw K8s manifests
