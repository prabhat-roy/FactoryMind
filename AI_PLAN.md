# AI_PLAN.md — FactoryMind (Smart Manufacturing & Industry 4.0 Platform)

> Hierarchical AI/ML strategy. Reuses the Paperclip / OpenClaw / NemoClaw
> agent platform first defined in [ShopOS/AI.md](../ShopOS/AI.md). This file
> is the FactoryMind-specific specialisation.

---

## 1. Why AI in FactoryMind

FactoryMind ingests OPC-UA, MQTT, MTConnect, and ISA-95 telemetry from
hundreds of machines. AI is the only realistic way to:

- **Predict** failures before they cost a shift's output (predictive
  maintenance on bearings, spindles, hydraulic pumps).
- **See** defects faster and more consistently than line operators (CV on
  the line, on edge GPUs, sub-100 ms inference).
- **Schedule** orders / lines / shifts under constraint sets a human
  planner cannot solve in real time.
- **Reason** over root-cause across MES + SCADA + quality data when an
  abnormal-OEE alert fires at 3 a.m.

Latency, edge constraints, and ISA/IEC 62443 cyber-physical safety are the
binding constraints — every AI path is auditable and reversible.

---

## 2. Domain-Specific AI/ML Use Cases

| # | Use case | Domain | Model class | Latency budget |
|---|----------|--------|-------------|----------------|
| 1 | Predictive maintenance (vibration + thermal) | maintenance | TCN + Survival GBM | streaming, p95 <1 min |
| 2 | Visual defect detection on the line | quality | YOLOv9 / RT-DETR + custom backbone | <100 ms on edge |
| 3 | Production scheduling optimisation | mes, planning | OR-Tools + Llama 3.1 reasoning over constraints | <30 s/replan |
| 4 | Energy forecast & peak-shaving | utilities, energy | Prophet + LightGBM ensemble | hourly |
| 5 | OEE anomaly + root-cause | analytics | Isolation Forest + GNN over MES events + LLM RCA writeup | <5 min |
| 6 | Quality-control vision (surface defect) | quality | Anomalib (PaDiM, PatchCore) | <80 ms on edge |
| 7 | Supply-chain demand forecast | scm | NHITS + Temporal Fusion Transformer | nightly |
| 8 | Voice work-order capture (shop-floor noise) | wms, maintenance | Whisper-large-v3 + custom acoustic model | <1.5 s |
| 9 | Digital-twin what-if simulation | engineering | LLM + simulation tool-call (Gazebo/Modelica) | <60 s/run |
| 10 | Worker-safety vision (PPE, intrusion zones) | safety | YOLOv9 + pose detector | <50 ms on edge |
| 11 | SOP / standard-work assistant | manufacturing-execution | Llama 3.1 70B + Donut on SOPs | <2 s |
| 12 | Spare-parts inventory reorder ML | maintenance, scm | Bayesian POU model | nightly |

---

## 3. Hierarchical Agent Architecture

Reuses **OpenClaw** / **Paperclip** / **NemoClaw** from `ShopOS/AI.md`.

### Tier 0 — Master Architect Agent

`factory-architect` (OpenClaw + Llama 3.1 70B). Researches AI tooling,
proposes new services, on-boards Tier-1 leads, weekly written report.
Read-only on prod; writes only to `staging-gitops`.

### Tier 1 — Division Leads (5)

| Agent | Scope |
|-------|-------|
| `factory-dev-lead`        | Backend/frontend service code |
| `factory-devops-lead`     | Helm, GitOps, infra, CI |
| `factory-devsecops-lead`  | OPA, Vault, Cilium, Falco, ISA/IEC 62443 |
| `factory-dataml-lead`     | Feature store, training, drift, edge model rollouts |
| `factory-platform-lead`   | Cross-cutting (idempotency, saga, outbox), edge runtime |

### Tier 2 — Specialist Agents

**By language**: `go-agent`, `java-agent`, `kotlin-agent`, `python-agent`,
`node-agent`, `rust-agent`, `cpp-agent` (edge), `typescript-agent`.

**By tool** (one agent per OSS tool): PostgreSQL, TimescaleDB, MongoDB,
Redis, Cassandra, ClickHouse, Kafka, NATS, MQTT (Mosquitto/EMQX),
OPC-UA gateway, Vault, Keycloak, OPA, Kyverno, Falco, Cilium, Istio,
ArgoCD, Argo Workflows, Prometheus, Grafana, Loki, Jaeger,
OpenTelemetry, MinIO, Trivy, Cosign, Eclipse Hono, Eclipse Ditto,
Eclipse Kanto (edge), KubeEdge, Camunda, Druid, OpenSearch.

**By service** — one agent per microservice (~190). Owns README, OpenAPI,
test coverage, CHANGELOG, deps, /healthz wiring.

### Tier 3 — Ephemeral Workers

Spawned per Argo Workflow job for retraining a defect detector on new
camera footage, regenerating digital-twin scenarios, writing post-incident
RCA. Live <30 min.

### Lifecycle

Research → Document → Implement → Test → Review → Deploy → Monitor →
Respond → Upgrade → Report. Weekly markdown report in `ai/reports/`.

---

## 4. Separate AI Infrastructure

```
ai-platform/
├── cluster: factory-ai-{aws,gcp,azure}   ← cloud GPU pool
├── cluster: factory-ai-edge              ← KubeEdge / k3s on shop-floor GPUs
├── namespace: factory-ai-control          ← Paperclip
├── namespace: factory-ai-agents           ← OpenClaw runtime
├── namespace: factory-ai-sandbox          ← NemoClaw
├── namespace: factory-ai-models           ← vLLM, Ollama, LiteLLM, Triton
├── namespace: factory-ai-edge-models      ← TensorRT, ONNX Runtime on edge
├── namespace: factory-ai-data             ← Qdrant, Weaviate, MinIO
├── namespace: factory-ai-obs              ← Langfuse, Phoenix
└── namespace: factory-ai-pipelines        ← Argo Workflows
```

### Hardware

- **Cloud**: A100 pool for retraining (vision + forecasting); A10G/L4 for
  inference of the LLM-based agents.
- **Edge** (per plant): NVIDIA Jetson Orin or industrial PC with RTX A2000
  for line-side CV inference. Runs ONNX/TensorRT models pushed via GitOps.
- Edge → cloud delta: only model weights + telemetry summaries, never raw
  video, by default. Air-gapped plants get model push via signed bundles.

### Software stack

| Layer | Tool | Purpose |
|-------|------|---------|
| Cloud inference | vLLM, Triton | LLM + vision serving |
| Edge inference | NVIDIA Triton + TensorRT, ONNX Runtime | Line-side CV |
| Local dev | Ollama | Offline |
| Gateway | LiteLLM | OpenAI-compatible, quota |
| Orchestrator | **Paperclip** | Task queue, audit |
| Agent platform | **OpenClaw** | Llama 3.1 70B |
| Sandbox | **NemoClaw** | NeMo Guardrails |
| Vector | Qdrant | SOP / runbook retrieval |
| Vector | Weaviate | Multimodal defect images + descriptions |
| MLOps | MLflow | Vision + forecast model registry |
| Edge MLOps | NVIDIA Fleet Command-style — self-hosted via Argo + Cosign-signed images |
| LLM obs | Langfuse + Phoenix | Trace, cost, eval |
| Workflows | Argo Workflows | Retraining, eval, edge bundle build |
| Feature store | Feast | Sensor features (+ Tecton-style streaming) |
| Drift | Evidently | Sensor drift, defect-class drift |

### Data isolation

- Plant-level data sovereignty — EU plants' data never leaves EU. Same for
  US, IN, JP. Cilium netpol + OPA enforce.
- Vector DB shard per plant; no cross-plant retrieval without explicit
  approval token.
- Telemetry retention: 13 months online (TimescaleDB), 7 years cold (MinIO).

---

## 5. Compliance & Guardrails

| Control | Mechanism |
|---------|-----------|
| ISA/IEC 62443 (cyber-physical) | AI cannot write to control systems; only advisory outputs |
| ISO 9001 / IATF 16949 (quality) | Every AI quality-decision logged with model version + features |
| ISO 27001 / NIST CSF | OPA + Falco + Vault on the AI plane |
| Worker-safety vision | NemoClaw blocks any ML output that affects safety-rated systems without human ack |
| GDPR (worker PII on cameras) | Faces blurred at edge before any cloud upload |
| Model provenance | Every model image Cosign-signed; SLSA Level 3 build attestations |

---

## 6. Implementation Roadmap

| Month | Milestone |
|-------|-----------|
| 1 | `factory-ai-*` cloud cluster up; vLLM Llama 3.1 70B |
| 2 | Paperclip + NemoClaw; Tier-0 architect live; edge cluster blueprint |
| 3 | Tier-1 leads; defect-detection v0 in shadow mode on one line |
| 4 | Per-language / per-tool Tier-2 agents |
| 5 | Per-service Tier-2 agents (mes → quality → maintenance first) |
| 6 | Predictive maintenance v1 on bearings; energy forecast prod |
| 7 | Production scheduling with OR-Tools + LLM reasoning |
| 8 | Multi-plant rollout, edge fleet upgrade, multi-cloud failover drill |

---

## 7. Cost Envelope (target)

- **Cloud infra**: $4,500 – $7,500 / month per primary cloud
- **Edge infra**: $1,200 / plant (one-time) + ~$80/month/plant ops
- **No** subscription LLM spend

---

## 8. Cross-References

- Master AI strategy: [ShopOS/AI.md](../ShopOS/AI.md)
- Same Paperclip/OpenClaw/NemoClaw platform across all 15 sibling projects.
