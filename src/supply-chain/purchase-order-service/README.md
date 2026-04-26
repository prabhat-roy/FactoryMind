# purchase-order-service

Service in the **supply-chain** domain of FactoryMind.

**Language:** Go · **Port:** 50161

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/purchase-order-service/](../../../helm/charts/purchase-order-service/) — Helm chart
- [manifests/supply-chain/purchase-order-service/](../../../manifests/supply-chain/purchase-order-service/) — Raw K8s manifests
