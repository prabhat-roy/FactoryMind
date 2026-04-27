# notification-orchestrator

Service in the platform domain of FactoryMind.

Language: Go Â· Port: 50003

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/notification-orchestrator/](../../../helm/charts/notification-orchestrator/) â€” Helm chart
- [manifests/platform/notification-orchestrator/](../../../manifests/platform/notification-orchestrator/) â€” Raw K8s manifests
