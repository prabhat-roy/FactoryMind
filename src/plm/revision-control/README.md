# revision-control

Service in the **plm** domain of FactoryMind.

**Language:** Go · **Port:** 50181

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/revision-control/](../../../helm/charts/revision-control/) — Helm chart
- [manifests/plm/revision-control/](../../../manifests/plm/revision-control/) — Raw K8s manifests
