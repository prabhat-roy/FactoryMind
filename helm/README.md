# Helm â€” FactoryMind

Per-service Helm charts plus infrastructure umbrella charts for the FactoryMind
MES + IIoT platform. Charts are organised under `charts/<service>` with one
chart per microservice.

## Layout

```
helm/
  charts/
    <service>/
      Chart.yaml
      values.yaml
      values-aws.yaml
      values-gcp.yaml
      values-azure.yaml
      templates/
        _helpers.tpl
        deployment.yaml
        service.yaml
        serviceaccount.yaml
```

## Conventions

- Chart `appVersion` follows the service git tag.
- `values.yaml` carries safe defaults; cloud overlays only override
  `image.repository`, `serviceAccount.annotations`, and storage classes.
- OT-touching services (`opc-ua-gateway`, `plc-adapter`, `mtconnect-adapter`,
  `modbus-adapter`, `dispatch-service`) default to blue-green via
  Argo Rollouts (see `gitops/argo-rollouts/`).
- IT-only services default to canary.
- Every chart enables `/healthz` and Prometheus scraping at `/metrics`.

See [../CLAUDE.md](../CLAUDE.md) for the full domain rules (ISA-95, IEC 62443,
FDA 21 CFR Part 11) and [../README.md](../README.md) for project scope.
