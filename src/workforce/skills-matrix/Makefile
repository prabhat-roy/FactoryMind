.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/skills-matrix .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t factorymind/skills-matrix:latest .

docker-run:
	docker run --rm -p 50221:50221 --env-file .env factorymind/skills-matrix:latest
