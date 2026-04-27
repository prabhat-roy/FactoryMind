# operator-sso

Service in the identity domain of FactoryMind.

Language: Go Â· Port: 50021

## Run locally

```bash
make run
```

## Endpoints

- `GET /healthz` â€” health check, returns `{ "status": "ok" }`

## See also

- [helm/charts/operator-sso/](../../../helm/charts/operator-sso/) â€” Helm chart
- [manifests/identity/operator-sso/](../../../manifests/identity/operator-sso/) â€” Raw K8s manifests
