# picking-service

Service in the warehouse domain of FactoryMind.

Language: Go Â· Port: 50141

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/picking-service/](../../../helm/charts/picking-service/) â€” Helm chart
- [manifests/warehouse/picking-service/](../../../manifests/warehouse/picking-service/) â€” Raw K8s manifests
