# FactoryMind â€” Smart Manufacturing & Industrial IoT Platform

Enterprise-grade, cloud-native manufacturing execution platform built on open source technologies.
Covers the full manufacturing value chain â€” production planning, MES, quality management, supply
chain, predictive maintenance, digital twin, OEE analytics, warehouse management, and regulatory
compliance â€” designed for discrete manufacturers, process industries, automotive OEMs, electronics
companies, and pharmaceutical manufacturers. Compliant with ISA-95, ISA-88, and IEC 62443.

---

## Overview

| Attribute         | Value                                                              |
|-------------------|--------------------------------------------------------------------|
| Type              | MES Â· ERP Integration Â· IIoT Â· Digital Twin Â· Predictive Maintenance |
| Domains           | 17 business domains                                                |
| Services          | 195+ microservices                                                 |
| Languages         | Go, Java, Kotlin, Python, Rust, C++ (PLC adapters), Node.js, Scala |
| Standards         | ISA-95, ISA-88, OPC-UA, MQTT, MTConnect, STEP, GS1                 |
| Compliance        | IEC 62443 (OT security), FDA 21 CFR Part 11 (pharma), ISO 9001     |
| Databases         | PostgreSQL, TimescaleDB, InfluxDB, MongoDB, Redis, ClickHouse      |
| Message Broker    | Apache Kafka, MQTT (IIoT), NATS JetStream, AMQP                    |
| Cloud             | AWS (primary), Azure, On-premise (OT network air-gap)              |
| Orchestration     | Kubernetes (EKS) + on-premise K8s (shop-floor edge)                |
| IoT Integration   | OPC-UA, MQTT, MTConnect, Modbus â€” PLCs, CNCs, robots, sensors      |
| Frontend          | React (MES dashboard), Angular (planning portal), Next.js (quality), Flutter (shop-floor mobile) |

---

## Business Domains

| # | Domain                    | Key Services                                                           |
|---|---------------------------|------------------------------------------------------------------------|
| 1 | Production Planning       | mrp-service, scheduling-service, capacity-service, workorder, bom      |
| 2 | Manufacturing Execution   | mes-service, dispatch-service, tracking-service, wip-service, operator |
| 3 | Quality Management        | qms-service, inspection-service, spc-service, ncr-service, calibration |
| 4 | Predictive Maintenance    | pm-service, vibration-service, thermal-service, rul-predictor, cmms    |
| 5 | Digital Twin              | twin-service, simulation-service, model-service, physics-engine        |
| 6 | IIoT Data Platform        | opc-gateway, mqtt-broker, telemetry-service, historian, edge-agent     |
| 7 | Warehouse & Inventory     | wms-service, inventory-service, location-service, picking, putaway     |
| 8 | Supply Chain              | supplier-service, purchase-order, inbound-logistics, kanban-service    |
| 9 | Product Lifecycle         | plm-service, bom-service, revision-control, cad-integration, ecn       |
| 10 | Energy Management         | energy-service, meter-service, oee-service, carbon-tracker, iso50001  |
| 11 | Labour & Workforce        | labour-service, skills-matrix, training-compliance, shift-management   |
| 12 | Regulatory & Compliance   | compliance-service, batch-record, e-signature, audit-trail, capa       |
| 13 | ERP Integration           | erp-bridge, sap-adapter, oracle-adapter, sync-service, reconciliation  |
| 14 | Analytics & KPI           | oee-analytics, yield-analytics, quality-analytics, cost-analytics      |
| 15 | Traceability              | traceability-service, lot-tracking, serial-service, genealogy, recall  |
| 16 | Identity & Access         | auth-service, operator-sso, mfa, rbac-service, e-signature-service     |
| 17 | Platform                  | api-gateway, mes-bff, planning-bff, quality-bff, graphql-gateway       |

---

## Architecture

```
    â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”
    â”‚                   IT Network (Cloud / Enterprise)               â”‚
    â”‚  â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”   â”‚
    â”‚  â”‚                     API Gateway                          â”‚   â”‚
    â”‚  â”‚     (OAuth2 Â· mTLS Â· Rate Limit Â· IEC 62443 Auth)       â”‚   â”‚
    â”‚  â””â”€â”€â”€â”€â”€â”€â”¬â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”¬â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”¬â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜   â”‚
    â”‚         â”‚             â”‚              â”‚                           â”‚
    â”‚  â”Œâ”€â”€â”€â”€â”€â”€â–¼â”€â”€â”   â”Œâ”€â”€â”€â”€â”€â”€â–¼â”€â”€â”€â”   â”Œâ”€â”€â”€â”€â”€â”€â–¼â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”              â”‚
    â”‚  â”‚  MES    â”‚   â”‚Planning  â”‚   â”‚  Quality Portal  â”‚              â”‚
    â”‚  â”‚Dashboardâ”‚   â”‚ Portal   â”‚   â”‚   (Next.js)      â”‚              â”‚
    â”‚  â”‚ (React) â”‚   â”‚(Angular) â”‚   â””â”€â”€â”€â”€â”€â”€â”¬â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜              â”‚
    â”‚  â””â”€â”€â”€â”€â”€â”€â”¬â”€â”€â”˜   â””â”€â”€â”€â”€â”€â”€â”¬â”€â”€â”€â”˜          â”‚                          â”‚
    â”‚         â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”´â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜                          â”‚
    â”‚                        â”‚ gRPC (Istio mTLS)                       â”‚
    â”‚  â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”  â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â–¼â”€â”€â”€â”  â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”  â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”  â”‚
    â”‚  â”‚ Planning â”‚  â”‚    MES     â”‚  â”‚ Quality  â”‚  â”‚  ERP Bridge  â”‚  â”‚
    â”‚  â”‚  & MRP   â”‚  â”‚  Services  â”‚  â”‚   QMS    â”‚  â”‚  (SAP/Oracle)â”‚  â”‚
    â”‚  â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜  â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜  â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜  â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜  â”‚
    â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”¬â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜
                  IT/OT DMZ    â”‚ (OPC-UA Bridge / data diode)
    â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â–¼â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”
    â”‚                  OT Network / Shop Floor Edge                   â”‚
    â”‚  â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”    â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”    â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â” â”‚
    â”‚  â”‚  OPC-UA Gatewayâ”‚    â”‚  MQTT Broker â”‚    â”‚  Edge AI Node  â”‚ â”‚
    â”‚  â”‚  (PLC / SCADA) â”‚    â”‚ (Mosquitto)  â”‚    â”‚ (NVIDIA Jetson) â”‚ â”‚
    â”‚  â””â”€â”€â”€â”€â”€â”€â”€â”€â”¬â”€â”€â”€â”€â”€â”€â”€â”˜    â””â”€â”€â”€â”€â”€â”€â”¬â”€â”€â”€â”€â”€â”€â”€â”˜    â””â”€â”€â”€â”€â”€â”€â”€â”€â”¬â”€â”€â”€â”€â”€â”€â”€â”€â”˜ â”‚
    â”‚           â”‚                   â”‚                      â”‚          â”‚
    â”‚       CNC Machines     Robots / Cobots        Sensors / Vision  â”‚
    â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜
```

---

## Tech Stack

### Manufacturing Standards & Protocols
- ISA-95: Enterpriseâ€“control integration standard â€” defines data models for production scheduling, WIP, and material tracking
- ISA-88: Batch control standard â€” recipe management, phase logic, equipment hierarchy for process industries
- OPC-UA: Unified Architecture â€” secure, platform-independent machine communication (PLC, CNC, robot data)
- MTConnect: Open standard for CNC machine tool data (spindle speed, axis position, tool wear)
- MQTT: Lightweight IoT messaging for sensors and edge devices (QoS 0/1/2)
- GS1 / EPCIS: Global traceability standard â€” serialised product tracking and supply chain events

### Infrastructure
- IT Layer: Kubernetes on EKS â€” MES, planning, quality, analytics, ERP integration
- OT Layer: On-premise Kubernetes (shop-floor) â€” OPC-UA gateway, edge AI, real-time control
- Digital Twin: Physics-based simulation (OpenModelica + custom Go engine) â€” virtual factory model
- Time-Series: TimescaleDB (machine sensor data, OEE metrics); InfluxDB (high-freq vibration â€” 10kHz)
- Historian: Industrial data historian (open-source alternative to OSIsoft PI) â€” long-term process data
- Vision AI: NVIDIA Jetson (edge) â€” real-time defect detection via computer vision on production line

### CI/CD & GitOps
- CI: Jenkins (primary), GitLab CI (self-hosted, air-gapped for OT), Tekton
- CD: ArgoCD (IT layer), Flux CD (OT layer â€” change-controlled, 4-eyes approval for shop-floor)
- IaC: Terraform (EKS + VPC), Ansible (OT server hardening per IEC 62443)
- Secrets: HashiCorp Vault (IT) + SOPS (OT â€” HSM-backed key management)

### Observability
- Metrics: Prometheus + Grafana (OEE, cycle time, reject rate, machine availability)
- Logs: Loki + Fluent Bit (IEC 62443 audit trail â€” tamper-evident, 5-year retention for pharma)
- Traces: Jaeger + OpenTelemetry (trace production order from planning â†’ dispatch â†’ completion)
- OEE Dashboard: Real-time ClickHouse â€” availability, performance, quality by line / shift / product
- SLOs: OPC-UA data latency < 500ms, work order dispatch < 2s, quality inspection < 5s

### Security (IEC 62443)
- IT/OT Separation: Purdue model zones â€” IT (L3/L4), DMZ (L3.5), OT (L0-L2) with data diode
- Identity: Keycloak (operator MFA mandatory), e-signature service (FDA 21 CFR Part 11 compliant)
- Network: Cilium eBPF (IT), dedicated VLANs + firewall (OT), OPC-UA with certificate authentication
- Scanning: Trivy, Semgrep (ICS/SCADA security rules), NESSUS (OT vuln scanning), kube-bench
- Audit: Every operator action logged with e-signature â€” immutable audit trail (pharma GxP compliance)

### AI / ML (Manufacturing Intelligence)
- Predictive Maintenance: Anomaly detection (Isolation Forest + LSTM) on vibration, temperature, current â€” predicts failure 72h ahead
- Computer Vision QC: CNN (ResNet-based) on production line camera â€” 99.5% defect detection accuracy at 30fps
- Digital Twin Simulation: Physics-informed ML for production simulation â€” what-if scenario planning
- OEE Optimisation: RL agent for production scheduling â€” minimise changeover time and WIP inventory
- Yield Prediction: Gradient Boosting on process parameters â€” predicts first-pass yield before batch completion
- Root Cause Analysis: Causal AI on SPC data â€” identifies process parameters driving quality escapes
- Demand-Driven Planning: LSTM forecast on customer orders â†’ MRP â†’ production schedule auto-generation

---

## Key Design Decisions

1. ISA-95 as the integration backbone: All ERP â†” MES data exchange follows ISA-95 schemas â€” adding a new ERP system requires only a new adapter, not changes to MES services
2. OT air-gap with data diode: OPC-UA data flows ITâ†’OT for commands only via secure gateway; telemetry flows OTâ†’IT unidirectionally â€” a compromised IT system cannot modify PLC programs
3. Edge AI for quality inspection: Vision models run on NVIDIA Jetson at production line edge â€” no image upload to cloud, sub-100ms inference, works during WAN outage
4. Electronic batch records: All process parameters captured automatically from OPC-UA â€” eliminates manual paper batch records, enables real-time deviation alerts (pharma compliance)
5. Immutable audit trail: Every operator action (parameter change, work order update, QC decision) written to EventStoreDB â€” append-only, tamper-evident for regulatory audit
6. Genealogy graph: Product lot genealogy (components â†’ sub-assemblies â†’ finished goods) stored in Neo4j â€” enables instant recall impact analysis across entire production history

---

## Compliance Controls

| Standard          | Implementation                                                         |
|-------------------|------------------------------------------------------------------------|
| IEC 62443         | Zone/conduit model, patch management, access control per security level |
| FDA 21 CFR Part 11| E-signature, audit trail, system validation documentation              |
| ISO 9001          | QMS workflows, CAPA management, calibration records, document control  |
| GMP (pharma)      | Automated batch records, deviation management, out-of-spec handling    |
| IATF 16949 (auto) | Control plan, PPAP, FMEA, SPC, MSA â€” automotive quality requirements  |

---

## Status

- [ ] Architecture design & ISA-95 data model
- [ ] Service registry & proto definitions
- [ ] OPC-UA gateway (PLC + CNC + robot connectivity)
- [ ] MES core (work orders, dispatch, WIP tracking)
- [ ] Quality management (SPC, inspection, NCR)
- [ ] Service skeletons (healthz, metrics)
- [ ] Docker Compose (local dev with PLC simulator)
- [ ] Helm charts (IT layer) + K8s manifests (OT layer)
- [ ] CI/CD pipelines (Jenkins, GitLab CI)
- [ ] GitOps (ArgoCD IT + Flux CD OT)
- [ ] Predictive maintenance AI pipeline
- [ ] Computer vision QC (NVIDIA Jetson deployment)
