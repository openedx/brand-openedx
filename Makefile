.PHONY: build
build:
	rm -rf dist && mkdir dist
	npm run build-tokens
	npm run build-scss
