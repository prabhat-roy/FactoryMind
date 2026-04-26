# oracle-adapter

Service in the **erp-integration** domain of FactoryMind.

**Language:** Go · **Port:** 50261

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/oracle-adapter/](../../../helm/charts/oracle-adapter/) — Helm chart
- [manifests/erp-integration/oracle-adapter/](../../../manifests/erp-integration/oracle-adapter/) — Raw K8s manifests
