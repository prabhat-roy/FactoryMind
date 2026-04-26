FROM golang:1.24-alpine AS build
WORKDIR /src
COPY . .
RUN go mod download && CGO_ENABLED=0 go build -o /out/config-service ./cmd/server
FROM gcr.io/distroless/static:nonroot
COPY --from=build /out/config-service /config-service
USER nonroot:nonroot
EXPOSE 8080
ENTRYPOINT ["/config-service"]
