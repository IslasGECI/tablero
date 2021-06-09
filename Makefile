.PHONY: build run

build:
	docker build --tag=islasgeci/tablero_front .

run:
	docker run --detach --publish 5000:80 --rm islasgeci/tablero_front

tests:
	yarn
	yarn test -u
