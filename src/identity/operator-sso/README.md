# operator-sso

Service in the **identity** domain of FactoryMind.

**Language:** Go · **Port:** 50021

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` — health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/operator-sso/](../../../helm/charts/operator-sso/) — Helm chart
- [manifests/identity/operator-sso/](../../../manifests/identity/operator-sso/) — Raw K8s manifests
