.PHONY: build build-tokens build-scss dist clean
build: clean build-tokens build-scss
	cp *.svg *.png *.ico dist/
	cp -r paragon/images dist/paragon/

dist:
	mkdir -p dist/paragon

build-tokens: dist
	paragon build-tokens --source ./paragon/tokens/ --build-dir ./dist/paragon/build -t light

build-scss: dist
	paragon build-scss --corePath ./paragon/core.scss --themesPath ./dist/paragon/build/themes --source

clean:
	rm -rf dist
