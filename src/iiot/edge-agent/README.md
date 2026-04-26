# edge-agent

Per-line edge agent. Runs on shop-floor servers / NVIDIA Jetson. Talks to PLC, runs vision QC
inference locally, buffers data during WAN outage, and replays into IT historian on
reconnect. Compatible with K3s on-prem deployment.
