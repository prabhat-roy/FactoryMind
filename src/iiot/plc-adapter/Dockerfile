FROM debian:bookworm AS build
RUN apt-get update && apt-get install -y --no-install-recommends \
      build-essential cmake libssl-dev libpaho-mqtt-dev libsnap7-dev \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /src
COPY . .
RUN cmake -B build -S . -DCMAKE_BUILD_TYPE=Release && cmake --build build --parallel

FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y --no-install-recommends \
      libssl3 libpaho-mqtt1.3 libsnap7-1 \
    && rm -rf /var/lib/apt/lists/*
COPY --from=build /src/build/plc-adapter /usr/local/bin/plc-adapter
USER 10001
EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/plc-adapter"]
