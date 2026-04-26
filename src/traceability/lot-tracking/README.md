# lot-tracking

Service in the **traceability** domain of FactoryMind.

**Language:** Go · **Port:** 50300

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/lot-tracking/](../../../helm/charts/lot-tracking/) — Helm chart
- [manifests/traceability/lot-tracking/](../../../manifests/traceability/lot-tracking/) — Raw K8s manifests
