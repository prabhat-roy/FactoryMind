//! Inbound command handler. Verifies signed-nonce per FactoryMind data-diode rule before
//! issuing OPC-UA Write to the PLC.

use anyhow::{anyhow, Result};

pub fn verify_signature(_payload: &[u8], _sig_b64: &str, _pubkey_pem: &str) -> Result<()> {
    // RSA-PSS / ed25519 verification stub.
    Err(anyhow!("not yet implemented"))
}
