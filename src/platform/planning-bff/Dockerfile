FROM golang:1.24-alpine AS build
WORKDIR /src
COPY . .
RUN go mod download && CGO_ENABLED=0 go build -o /out/planning-bff ./cmd/server
FROM gcr.io/distroless/static:nonroot
COPY --from=build /out/planning-bff /planning-bff
USER nonroot:nonroot
EXPOSE 8080
ENTRYPOINT ["/planning-bff"]
