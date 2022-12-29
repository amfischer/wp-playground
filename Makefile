up:
	docker-compose up -d

down:
	docker-compose down

restart: down up

build:
	docker-compose build

dbcreate:
	docker-compose exec db mysql -uroot -ptest -e "CREATE DATABASE app CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"

terminal:
	docker-compose exec wordpress bash

terminalroot:
	docker-compose exec -u 0 wordpress bash

db:
	docker-compose exec db bash

logs:
	docker-compose logs --tail 10 --follow