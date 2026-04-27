# serial-service

Service in the traceability domain of FactoryMind.

Language: Go Â· Port: 50301

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/serial-service/](../../../helm/charts/serial-service/) â€” Helm chart
- [manifests/traceability/serial-service/](../../../manifests/traceability/serial-service/) â€” Raw K8s manifests
