REPO="github.com/Od1nB/bag_of_holding_goperation"
GO_MODULE_PATH="${REPO}/stock_api"
CONTAINERD ?= podman

start:
	$(CONTAINERD) compose down && $(CONTAINERD) compose up -w

stop:
	$(CONTAINERD) compose down

proto:
	protoc proto/product.proto --go-grpc_out=./stock_api/ --go_out=./stock_api/

.PHONY: proto
