.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/notification-orchestrator .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t factorymind/notification-orchestrator:latest .

docker-run:
	docker run --rm -p 50003:50003 --env-file .env factorymind/notification-orchestrator:latest
