# supplier-service

Service in the supply-chain domain of FactoryMind.

Language: Go Â· Port: 50160

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/supplier-service/](../../../helm/charts/supplier-service/) â€” Helm chart
- [manifests/supply-chain/supplier-service/](../../../manifests/supply-chain/supplier-service/) â€” Raw K8s manifests
