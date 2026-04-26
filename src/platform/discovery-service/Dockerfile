FROM golang:1.24-alpine AS build
WORKDIR /src
COPY . .
RUN go mod download && CGO_ENABLED=0 go build -o /out/discovery-service ./cmd/server
FROM gcr.io/distroless/static:nonroot
COPY --from=build /out/discovery-service /discovery-service
USER nonroot:nonroot
EXPOSE 8080
ENTRYPOINT ["/discovery-service"]
