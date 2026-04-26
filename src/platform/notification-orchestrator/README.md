# notification-orchestrator

Service in the **platform** domain of FactoryMind.

**Language:** Go · **Port:** 50003

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/notification-orchestrator/](../../../helm/charts/notification-orchestrator/) — Helm chart
- [manifests/platform/notification-orchestrator/](../../../manifests/platform/notification-orchestrator/) — Raw K8s manifests
