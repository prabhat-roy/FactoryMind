FROM rust:1.80 AS build
WORKDIR /src
COPY . .
RUN cargo build --release

FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates && rm -rf /var/lib/apt/lists/*
COPY --from=build /src/target/release/opc-ua-gateway /usr/local/bin/opc-ua-gateway
USER 10001
EXPOSE 8080 4840
ENTRYPOINT ["/usr/local/bin/opc-ua-gateway"]
