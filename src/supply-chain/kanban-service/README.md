# kanban-service

Service in the **supply-chain** domain of FactoryMind.

**Language:** Go · **Port:** 50162

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/kanban-service/](../../../helm/charts/kanban-service/) — Helm chart
- [manifests/supply-chain/kanban-service/](../../../manifests/supply-chain/kanban-service/) — Raw K8s manifests
