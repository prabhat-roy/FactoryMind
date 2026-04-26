FROM golang:1.24-alpine AS build
WORKDIR /src
COPY . .
RUN go mod download && CGO_ENABLED=0 go build -o /out/telemetry-service ./cmd/server
FROM gcr.io/distroless/static:nonroot
COPY --from=build /out/telemetry-service /telemetry-service
USER nonroot:nonroot
EXPOSE 8080 9090
ENTRYPOINT ["/telemetry-service"]
