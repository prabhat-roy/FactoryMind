# sap-adapter

Service in the erp-integration domain of FactoryMind.

Language: Go Â· Port: 50260

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/sap-adapter/](../../../helm/charts/sap-adapter/) â€” Helm chart
- [manifests/erp-integration/sap-adapter/](../../../manifests/erp-integration/sap-adapter/) â€” Raw K8s manifests
