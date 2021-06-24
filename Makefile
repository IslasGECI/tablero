.PHONY: build run

build:
	docker build --tag=islasgeci/tablero_front .

run:
	docker run --detach --publish 5000:80 --rm islasgeci/tablero_front

tests:
	yarn
	yarn test

clean:
	rm -rf node_modules
	rm -rf public_html/node_modules

check_status:
	curl -Is localhost:80 | head -1 | awk '{print $2}'
	