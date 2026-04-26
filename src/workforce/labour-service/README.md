# labour-service

Service in the **workforce** domain of FactoryMind.

**Language:** Go · **Port:** 50220

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/labour-service/](../../../helm/charts/labour-service/) — Helm chart
- [manifests/workforce/labour-service/](../../../manifests/workforce/labour-service/) — Raw K8s manifests
