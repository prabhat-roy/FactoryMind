# supplier-service

Service in the **supply-chain** domain of FactoryMind.

**Language:** Go · **Port:** 50160

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/supplier-service/](../../../helm/charts/supplier-service/) — Helm chart
- [manifests/supply-chain/supplier-service/](../../../manifests/supply-chain/supplier-service/) — Raw K8s manifests
