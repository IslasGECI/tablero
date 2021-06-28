.PHONY: \
		check \
		check_html \
		check_js \
		check_status \
		clean \
		setup \
		tests

check: setup check_html check_js

check_html:
	yarn workspace public_html prettier:check_html

check_js:
	yarn workspace public_html prettier:check_js

check_status:
	curl --head --silent localhost | grep "200 OK"

clean:
	rm --force --recursive node_modules
	rm --force --recursive public_html/node_modules

setup:
	yarn

tests:
	yarn
	yarn test
