.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/carbon-tracker .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t factorymind/carbon-tracker:latest .

docker-run:
	docker run --rm -p 50202:50202 --env-file .env factorymind/carbon-tracker:latest
