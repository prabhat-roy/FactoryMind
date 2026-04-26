FROM rust:1.80 AS build
WORKDIR /src
COPY . .
RUN cargo build --release
FROM debian:bookworm-slim
COPY --from=build /src/target/release/modbus-adapter /usr/local/bin/modbus-adapter
USER 10001
ENTRYPOINT ["/usr/local/bin/modbus-adapter"]
