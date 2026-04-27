# recall-service

Service in the traceability domain of FactoryMind.

Language: Go Â· Port: 50302

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/recall-service/](../../../helm/charts/recall-service/) â€” Helm chart
- [manifests/traceability/recall-service/](../../../manifests/traceability/recall-service/) â€” Raw K8s manifests
