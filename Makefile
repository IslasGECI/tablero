.PHONY: build run

build:
	docker build --tag=islasgeci/tablero_front .

run:
	docker run --detach --publish 5000:5000 --rm --volume $${HOME}/repositorios/tablero_front/:/workdir islasgeci/tablero_front

