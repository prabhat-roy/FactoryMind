.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/rul-predictor .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t factorymind/rul-predictor:latest .

docker-run:
	docker run --rm -p 50103:50103 --env-file .env factorymind/rul-predictor:latest
