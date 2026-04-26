# plc-adapter

C++ shim that speaks PLC-vendor protocols (Siemens S7 via libsnap7, Allen-Bradley via libplctag,
Beckhoff TwinCAT ADS) and republishes as MQTT topics or OPC-UA. Lives on the OT side close to
the PLC for deterministic latency.
