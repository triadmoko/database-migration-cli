# Database Migration
Setup url database in makefile
## Installation
Installation Tool
```
go get -u -d github.com/golang-migrate/migrate/cmd/migrate
```

Installation Driver
```
go install -tags 'postgres' github.com/golang-migrate/migrate/v4/cmd/migrate@latest
```

## Create Migration CLI
script create database 
```bash
make migration-create table=name
```
 
script migration up
```bash
make migration-create table=name
```

script migration down
```bash
make migration-down  table=name
```
