REPO="github.com/Od1nB/bag_of_holding_goperation"
GO_MODULE_PATH="${REPO}/stock_api"

start:
	docker compose down && docker compose up -w

stop:
	docker compose down

proto:
	protoc proto/product.proto --go-grpc_out=./stock_api/ --go_out=./stock_api/

.PHONY: proto
