# scheduler-service

Service in the **platform** domain of FactoryMind.

**Language:** Go · **Port:** 50004

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/scheduler-service/](../../../helm/charts/scheduler-service/) — Helm chart
- [manifests/platform/scheduler-service/](../../../manifests/platform/scheduler-service/) — Raw K8s manifests
