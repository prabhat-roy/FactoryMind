# kanban-service

Service in the supply-chain domain of FactoryMind.

Language: Go Â· Port: 50162

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/kanban-service/](../../../helm/charts/kanban-service/) â€” Helm chart
- [manifests/supply-chain/kanban-service/](../../../manifests/supply-chain/kanban-service/) â€” Raw K8s manifests
