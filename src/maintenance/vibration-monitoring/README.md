# vibration-monitoring

Service in the **maintenance** domain of FactoryMind.

**Language:** Go · **Port:** 50101

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/vibration-monitoring/](../../../helm/charts/vibration-monitoring/) — Helm chart
- [manifests/maintenance/vibration-monitoring/](../../../manifests/maintenance/vibration-monitoring/) — Raw K8s manifests
