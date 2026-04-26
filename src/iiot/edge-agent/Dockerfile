FROM rust:1.80 AS build
WORKDIR /src
COPY . .
RUN cargo build --release

FROM debian:bookworm-slim
COPY --from=build /src/target/release/edge-agent /usr/local/bin/edge-agent
USER 10001
EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/edge-agent"]
