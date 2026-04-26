# audit-trail-service

Service in the **compliance** domain of FactoryMind.

**Language:** Go · **Port:** 50242

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/audit-trail-service/](../../../helm/charts/audit-trail-service/) — Helm chart
- [manifests/compliance/audit-trail-service/](../../../manifests/compliance/audit-trail-service/) — Raw K8s manifests
