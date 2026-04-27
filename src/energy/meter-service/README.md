# meter-service

Service in the energy domain of FactoryMind.

Language: Go Â· Port: 50200

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/meter-service/](../../../helm/charts/meter-service/) â€” Helm chart
- [manifests/energy/meter-service/](../../../manifests/energy/meter-service/) â€” Raw K8s manifests
