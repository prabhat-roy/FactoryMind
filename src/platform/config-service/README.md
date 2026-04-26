# config-service

Centralised dynamic configuration store - reads from Vault with TTL-cached snapshots and serves
as a fallback when Vault is unreachable. Watches for changes and pushes to subscribers.
