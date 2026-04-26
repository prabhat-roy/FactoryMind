//! OPC-UA subscription client. Connects, subscribes to monitored items, and forwards changes.

use serde::Serialize;

#[derive(Debug, Serialize)]
pub struct Sample {
    pub node_id: String,
    pub value: serde_json::Value,
    pub status: u32,
    pub source_ts_millis: i64,
    pub equipment_id: String,
}
