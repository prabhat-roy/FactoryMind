# twin-service

Service in the digital-twin domain of FactoryMind.

Language: Go Â· Port: 50120

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/twin-service/](../../../helm/charts/twin-service/) â€” Helm chart
- [manifests/digital-twin/twin-service/](../../../manifests/digital-twin/twin-service/) â€” Raw K8s manifests
