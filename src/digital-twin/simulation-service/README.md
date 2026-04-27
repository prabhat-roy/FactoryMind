# simulation-service

Service in the digital-twin domain of FactoryMind.

Language: Go Â· Port: 50121

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/simulation-service/](../../../helm/charts/simulation-service/) â€” Helm chart
- [manifests/digital-twin/simulation-service/](../../../manifests/digital-twin/simulation-service/) â€” Raw K8s manifests
