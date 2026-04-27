# admin-portal

Service in the platform domain of FactoryMind.

Language: Go Â· Port: 50001

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/admin-portal/](../../../helm/charts/admin-portal/) â€” Helm chart
- [manifests/platform/admin-portal/](../../../manifests/platform/admin-portal/) â€” Raw K8s manifests
