# recall-service

Service in the **traceability** domain of FactoryMind.

**Language:** Go · **Port:** 50302

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/recall-service/](../../../helm/charts/recall-service/) — Helm chart
- [manifests/traceability/recall-service/](../../../manifests/traceability/recall-service/) — Raw K8s manifests
