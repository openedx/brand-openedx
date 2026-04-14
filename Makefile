.PHONY: build clean
build:
	rm -rf dist && mkdir dist
	npm run build-tokens
	npm run build-scss
	cp *.svg *.png *.ico dist/
	cp -r paragon dist/paragon

clean:
	rm -rf dist paragon/build
