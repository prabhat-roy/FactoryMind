SERVICE := api-gateway
IMAGE   := factorymind/$(SERVICE)
TAG     ?= dev

.PHONY: run build test lint fmt image
run:
	go run ./cmd/server
build:
	CGO_ENABLED=0 go build -o bin/$(SERVICE) ./cmd/server
test:
	go test ./... -race -count=1
lint:
	golangci-lint run
fmt:
	gofmt -s -w .
	goimports -w .
image:
	docker build -t $(IMAGE):$(TAG) .
