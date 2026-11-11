.PHONY: install check test

install:
	go mod download

check:
	go build ./...

test:
	go test ./...
