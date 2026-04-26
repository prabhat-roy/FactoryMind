FROM debian:bookworm AS build
RUN apt-get update && apt-get install -y --no-install-recommends build-essential cmake libxml2-dev libcurl4-openssl-dev && rm -rf /var/lib/apt/lists/*
WORKDIR /src
COPY . .
RUN cmake -B build -S . -DCMAKE_BUILD_TYPE=Release && cmake --build build --parallel
FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 libcurl4 && rm -rf /var/lib/apt/lists/*
COPY --from=build /src/build/mtconnect-adapter /usr/local/bin/mtconnect-adapter
USER 10001
ENTRYPOINT ["/usr/local/bin/mtconnect-adapter"]
