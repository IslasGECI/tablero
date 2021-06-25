.PHONY: \
		build \
		check_status \
		run

build:
	docker build --tag=islasgeci/tablero_front .

check_status:
	curl --head --silent localhost:5000 | grep "200 OK"

run:
	docker run --detach --publish 5000:80 --rm islasgeci/tablero_front
