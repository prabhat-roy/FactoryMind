FROM golang:1.24-alpine AS build
WORKDIR /src
COPY . .
RUN go mod download && CGO_ENABLED=0 go build -o /out/mes-bff ./cmd/server
FROM gcr.io/distroless/static:nonroot
COPY --from=build /out/mes-bff /mes-bff
USER nonroot:nonroot
EXPOSE 8080 9090
ENTRYPOINT ["/mes-bff"]
