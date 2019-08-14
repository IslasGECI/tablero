.PHONY: build run

build:
	docker build --tag=islasgeci/tablero_front .

run:
	docker run --detach --publish 5000:80 --rm --volume $${HOME}/repositorios/tablero_front/templates:/usr/local/apache2/htdocs/ islasgeci/tablero_front

