# telemetry-service

High-throughput sensor ingestion. Subscribes to MQTT (shop-floor), batches and writes to
TimescaleDB (medium-frequency) and InfluxDB (10kHz vibration). Forwards select events to
Kafka. Designed for 1M readings/sec/cluster.
