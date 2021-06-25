.PHONY: \
		check_status \
		clean \
		test

check_status:
	curl -Is localhost:80 | head -1 | awk '{print $2}'

clean:
	rm -rf node_modules
	rm -rf public_html/node_modules

tests:
	yarn
	yarn test
