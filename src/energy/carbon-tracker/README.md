# carbon-tracker

Service in the **energy** domain of FactoryMind.

**Language:** Go · **Port:** 50202

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/carbon-tracker/](../../../helm/charts/carbon-tracker/) — Helm chart
- [manifests/energy/carbon-tracker/](../../../manifests/energy/carbon-tracker/) — Raw K8s manifests
