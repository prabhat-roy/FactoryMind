FROM golang:1.24-alpine AS build
WORKDIR /src
COPY . .
RUN go mod download && CGO_ENABLED=0 go build -o /out/graphql-gateway ./cmd/server
FROM gcr.io/distroless/static:nonroot
COPY --from=build /out/graphql-gateway /graphql-gateway
USER nonroot:nonroot
EXPOSE 8080
ENTRYPOINT ["/graphql-gateway"]
