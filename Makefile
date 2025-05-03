run:
	go run ./cmd/api -db-max-open-conns=50 -db-max-idle-conns=50 -db-max-idle-time=2h30m -db-dsn=postgres://greenlight:password@localhost/greenlight
up:
	migrate -path=./migrations -database=postgres://greenlight:password@localhost/greenlight up
down:
	migrate -path=./migrations -database=postgres://greenlight:password@localhost/greenlight down 
