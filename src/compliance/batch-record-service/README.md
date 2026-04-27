# batch-record-service

Service in the compliance domain of FactoryMind.

Language: Go Â· Port: 50240

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/batch-record-service/](../../../helm/charts/batch-record-service/) â€” Helm chart
- [manifests/compliance/batch-record-service/](../../../manifests/compliance/batch-record-service/) â€” Raw K8s manifests
