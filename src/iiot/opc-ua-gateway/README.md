# opc-ua-gateway

Rust-based OPC-UA gateway. Connects to PLC, CNC and SCADA OPC-UA servers; subscribes to
monitored items; publishes samples to Kafka via the gateway's outbound channel.

Implements the IT/OT data-diode rule: telemetry flows OT->IT freely; commands accepted only
when carrying a signed nonce verified against the IT identity service.

- OPC-UA Part 4 + Part 5
- Certificate-based authentication (X.509)
- Sub-100ms loop latency, deterministic
- Runs on the OT cluster (K3s) - `helm/charts/opc-ua-gateway/values-onprem.yaml`
