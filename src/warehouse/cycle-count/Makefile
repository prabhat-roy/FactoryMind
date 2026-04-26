.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/cycle-count .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t factorymind/cycle-count:latest .

docker-run:
	docker run --rm -p 50143:50143 --env-file .env factorymind/cycle-count:latest
