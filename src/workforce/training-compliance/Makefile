.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/training-compliance .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t factorymind/training-compliance:latest .

docker-run:
	docker run --rm -p 50222:50222 --env-file .env factorymind/training-compliance:latest
