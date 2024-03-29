table = $(table)
name = $(name)

url=mysql://user:password@host:port/db_name
version=$(version)
migration-up :
	migrate -database "$(url)" -path ./migrations/ up $(version)
	
migration-down :
	migrate -database "$(url)" -path ./migrations/ down $(version)
	
migration-create:
	migrate create -ext sql -dir ./migrations/ -seq $(name)

migration-force:
	migrate -database "$(url)" -path ./migrations/ force $(version)

migration-version:
	migrate -database "$(url)" -path ./migrations/ version