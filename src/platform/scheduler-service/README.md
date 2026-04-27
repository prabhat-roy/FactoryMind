# scheduler-service

Service in the platform domain of FactoryMind.

Language: Go Â· Port: 50004

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/scheduler-service/](../../../helm/charts/scheduler-service/) â€” Helm chart
- [manifests/platform/scheduler-service/](../../../manifests/platform/scheduler-service/) â€” Raw K8s manifests
