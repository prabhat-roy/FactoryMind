# predictive-maintenance

Service in the **maintenance** domain of FactoryMind.

**Language:** Go · **Port:** 50100

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/predictive-maintenance/](../../../helm/charts/predictive-maintenance/) — Helm chart
- [manifests/maintenance/predictive-maintenance/](../../../manifests/maintenance/predictive-maintenance/) — Raw K8s manifests
