# capa-service

Service in the compliance domain of FactoryMind.

Language: Go Â· Port: 50241

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/capa-service/](../../../helm/charts/capa-service/) â€” Helm chart
- [manifests/compliance/capa-service/](../../../manifests/compliance/capa-service/) â€” Raw K8s manifests
