# purchase-order-service

Service in the supply-chain domain of FactoryMind.

Language: Go Â· Port: 50161

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/purchase-order-service/](../../../helm/charts/purchase-order-service/) â€” Helm chart
- [manifests/supply-chain/purchase-order-service/](../../../manifests/supply-chain/purchase-order-service/) â€” Raw K8s manifests
