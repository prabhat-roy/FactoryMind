# meter-service

Service in the **energy** domain of FactoryMind.

**Language:** Go · **Port:** 50200

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/meter-service/](../../../helm/charts/meter-service/) — Helm chart
- [manifests/energy/meter-service/](../../../manifests/energy/meter-service/) — Raw K8s manifests
