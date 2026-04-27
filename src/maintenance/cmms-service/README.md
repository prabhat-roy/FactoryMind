# cmms-service

Service in the maintenance domain of FactoryMind.

Language: Go Â· Port: 50102

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/cmms-service/](../../../helm/charts/cmms-service/) â€” Helm chart
- [manifests/maintenance/cmms-service/](../../../manifests/maintenance/cmms-service/) â€” Raw K8s manifests
