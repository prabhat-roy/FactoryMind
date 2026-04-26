# workorder-service

Authoritative store for production work orders (ISA-95 PMRO/PMRR). Owns lifecycle:
CREATED -> RELEASED -> DISPATCHED -> IN_PROGRESS -> COMPLETED -> CLOSED. Publishes
`mes.workorder.dispatched`, `mes.workorder.completed`, `mes.workorder.released` to Kafka.

- Language: Java 21 / Spring Boot 3
- DB: PostgreSQL (Flyway migrations under `src/main/resources/db/migration`)
- Compliance: e-signature required to RELEASE; signature stored alongside audit-trail entry
