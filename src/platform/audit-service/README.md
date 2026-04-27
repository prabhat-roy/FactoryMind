# audit-service

Service in the platform domain of FactoryMind.

Language: Go Â· Port: 50002

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/audit-service/](../../../helm/charts/audit-service/) â€” Helm chart
- [manifests/platform/audit-service/](../../../manifests/platform/audit-service/) â€” Raw K8s manifests
