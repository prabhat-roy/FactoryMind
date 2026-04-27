# lot-tracking

Service in the traceability domain of FactoryMind.

Language: Go Â· Port: 50300

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/lot-tracking/](../../../helm/charts/lot-tracking/) â€” Helm chart
- [manifests/traceability/lot-tracking/](../../../manifests/traceability/lot-tracking/) â€” Raw K8s manifests
