# bom-service

Service in the plm domain of FactoryMind.

Language: Go Â· Port: 50180

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/bom-service/](../../../helm/charts/bom-service/) â€” Helm chart
- [manifests/plm/bom-service/](../../../manifests/plm/bom-service/) â€” Raw K8s manifests
