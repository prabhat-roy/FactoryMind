# proto/

gRPC service contracts for FactoryMind. Versioned per-package (e.g. `v1`).

## Structure

- `common/v1/` shared types (Site, Area, WorkCenter, EquipmentRef, ESignature)
- `<domain>/v1/` per-domain RPC and message definitions
- `buf.yaml` / `buf.gen.yaml` codegen config

## Build

```
buf lint
buf breaking --against '.git#branch=main'
buf generate
```

Generated code lives under `proto/gen/{go,java,python,rust}/`.

## Conventions

- Snake_case field names; PascalCase messages
- Versioned packages: `factorymind.<domain>.v1`
- All operator actions accept a `common.v1.ESignature` (FDA 21 CFR Part 11)
- IT->OT command messages always carry a signed nonce (data-diode rule)
