# mes-bff

Backend-for-frontend serving the React MES dashboard. Aggregates work order, dispatch, WIP and
OEE for a work-center landing screen.

- Language: Go
- Consumes: workorder-service, dispatch-service, tracking-service, oee-service via gRPC
- Cache: Redis (dashboard view ~2s TTL)
