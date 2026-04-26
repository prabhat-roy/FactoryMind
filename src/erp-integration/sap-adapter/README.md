# sap-adapter

Service in the **erp-integration** domain of FactoryMind.

**Language:** Go · **Port:** 50260

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/sap-adapter/](../../../helm/charts/sap-adapter/) — Helm chart
- [manifests/erp-integration/sap-adapter/](../../../manifests/erp-integration/sap-adapter/) — Raw K8s manifests
