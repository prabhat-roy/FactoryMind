# events/

Kafka, MQTT and AMQP event schemas. Avro for IT-side Kafka topics, JSON Schema for MQTT
shop-floor topics, AsyncAPI for top-level discovery.

## Topic naming

`{domain}.{entity}.{event}` -- e.g. `mes.workorder.dispatched`, `quality.inspection.failed`,
`iiot.machine.alarm`, `predictive-maintenance.failure.predicted`,
`traceability.batch.released`.

## Compatibility

Backward-compatible by default. Breaking changes use a new topic version
(`mes.workorder.dispatched.v2`) and a deprecation window of 90 days.

## Layout

- `avro/` Confluent Schema Registry compatible Avro schemas (Kafka)
- `jsonschema/` JSON Schema for MQTT payloads (shop-floor IoT)
- `asyncapi/` Top-level AsyncAPI 2.6 manifests
- `samples/` Example payloads for testing
