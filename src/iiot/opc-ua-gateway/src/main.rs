//! FactoryMind OPC-UA gateway. Bridges shop-floor PLCs to IT-side Kafka.
//! Enforces IT/OT data-diode: outbound telemetry always permitted; inbound commands require
//! signed nonce verified against the IT identity service public key.

use axum::{routing::get, Router};
use std::net::SocketAddr;
use tracing::info;

mod opcua_client;
mod publisher;
mod command;

#[tokio::main]
async fn main() -> anyhow::Result<()> {
    tracing_subscriber::fmt().json().init();
    let port: u16 = std::env::var("HTTP_PORT").unwrap_or_else(|_| "8080".into()).parse()?;
    let app = Router::new()
        .route("/healthz", get(|| async { "ok" }))
        .route("/readyz", get(|| async { "ready" }))
        .route("/metrics", get(metrics));
    let addr = SocketAddr::from(([0, 0, 0, 0], port));
    info!("opc-ua-gateway listening on {addr}");
    axum::serve(tokio::net::TcpListener::bind(addr).await?, app).await?;
    Ok(())
}

async fn metrics() -> String {
    let mf = prometheus::default_registry().gather();
    let enc = prometheus::TextEncoder::new();
    let mut buf = String::new();
    enc.encode_utf8(&mf, &mut buf).unwrap_or_default();
    buf
}
