.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/picking-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t factorymind/picking-service:latest .

docker-run:
	docker run --rm -p 50141:50141 --env-file .env factorymind/picking-service:latest
