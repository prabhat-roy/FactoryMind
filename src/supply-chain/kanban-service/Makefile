.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/kanban-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t factorymind/kanban-service:latest .

docker-run:
	docker run --rm -p 50162:50162 --env-file .env factorymind/kanban-service:latest
