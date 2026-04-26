.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/vibration-monitoring .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t factorymind/vibration-monitoring:latest .

docker-run:
	docker run --rm -p 50101:50101 --env-file .env factorymind/vibration-monitoring:latest
