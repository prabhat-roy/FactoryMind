# oee-service

Service in the **energy** domain of FactoryMind.

**Language:** Go · **Port:** 50201

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/oee-service/](../../../helm/charts/oee-service/) — Helm chart
- [manifests/energy/oee-service/](../../../manifests/energy/oee-service/) — Raw K8s manifests
