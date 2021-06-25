.PHONY: \
		check_status \
		clean \
		tests

clean:
	rm --force --recursive node_modules
	rm --force --recursive public_html/node_modules

check_status:
	curl --head --silent localhost | grep "200 OK"

tests:
	yarn
	yarn test
