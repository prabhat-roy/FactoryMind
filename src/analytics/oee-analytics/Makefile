.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/oee-analytics .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t factorymind/oee-analytics:latest .

docker-run:
	docker run --rm -p 50280:50280 --env-file .env factorymind/oee-analytics:latest
