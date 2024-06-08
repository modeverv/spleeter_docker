.PHONY: build up down do bash

build:
	docker-compose build

up:
	docker-compose up -d --build

down:
	docker-compose down

do: up
	docker-compose exec spleeter bash -c "spleeter separate /mount/$(file) -p spleeter:5stems -o /mount"
	make down

bash:
	docker-compose exec spleeter bash
