# serial-service

Service in the **traceability** domain of FactoryMind.

**Language:** Go · **Port:** 50301

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/serial-service/](../../../helm/charts/serial-service/) — Helm chart
- [manifests/traceability/serial-service/](../../../manifests/traceability/serial-service/) — Raw K8s manifests
