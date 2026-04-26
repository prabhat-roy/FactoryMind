# simulation-service

Service in the **digital-twin** domain of FactoryMind.

**Language:** Go · **Port:** 50121

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/simulation-service/](../../../helm/charts/simulation-service/) — Helm chart
- [manifests/digital-twin/simulation-service/](../../../manifests/digital-twin/simulation-service/) — Raw K8s manifests
