.PHONY: generate clean

generate:
	protoc --go_out=paths=source_relative:. --go-grpc_out=paths=source_relative:. proto/task/task.proto
	protoc --go_out=paths=source_relative:. --go-grpc_out=paths=source_relative:. proto/user/user.proto

clean:
	powershell -Command "Remove-Item -Force proto/task/*.pb.go; Remove-Item -Force proto/user/*.pb.go"