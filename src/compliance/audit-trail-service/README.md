# audit-trail-service

Service in the compliance domain of FactoryMind.

Language: Go Â· Port: 50242

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/audit-trail-service/](../../../helm/charts/audit-trail-service/) â€” Helm chart
- [manifests/compliance/audit-trail-service/](../../../manifests/compliance/audit-trail-service/) â€” Raw K8s manifests
