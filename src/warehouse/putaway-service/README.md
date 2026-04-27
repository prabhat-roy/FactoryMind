# putaway-service

Service in the warehouse domain of FactoryMind.

Language: Go Â· Port: 50142

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/putaway-service/](../../../helm/charts/putaway-service/) â€” Helm chart
- [manifests/warehouse/putaway-service/](../../../manifests/warehouse/putaway-service/) â€” Raw K8s manifests
