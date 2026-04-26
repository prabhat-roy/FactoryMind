# twin-service

Service in the **digital-twin** domain of FactoryMind.

**Language:** Go · **Port:** 50120

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/twin-service/](../../../helm/charts/twin-service/) — Helm chart
- [manifests/digital-twin/twin-service/](../../../manifests/digital-twin/twin-service/) — Raw K8s manifests
