use axum::{routing::get, Router};
use std::net::SocketAddr;

#[tokio::main]
async fn main() -> anyhow::Result<()> {
    tracing_subscriber::fmt().init();
    let port: u16 = std::env::var("HTTP_PORT").unwrap_or_else(|_| "8080".into()).parse()?;
    let app = Router::new().route("/healthz", get(|| async { "ok" }));
    let addr = SocketAddr::from(([0, 0, 0, 0], port));
    axum::serve(tokio::net::TcpListener::bind(addr).await?, app).await?;
    Ok(())
}
