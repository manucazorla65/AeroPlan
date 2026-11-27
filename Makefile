.PHONY: install check test

install:
	go mod download

check:
	gofmt -e . > /dev/null

test:
	go test ./...
