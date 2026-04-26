# capa-service

Service in the **compliance** domain of FactoryMind.

**Language:** Go · **Port:** 50241

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/capa-service/](../../../helm/charts/capa-service/) — Helm chart
- [manifests/compliance/capa-service/](../../../manifests/compliance/capa-service/) — Raw K8s manifests
