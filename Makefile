.PHONY: build build-tokens build-scss dist clean
build: clean dist build-tokens build-scss
	cp *.svg *.png *.ico dist/
	cp -r paragon/{build,images} dist/paragon/

dist:
	mkdir -p dist/paragon

build-tokens:
	paragon build-tokens --source ./paragon/tokens/ --build-dir ./paragon/build -t light

build-scss: dist
	paragon build-scss --corePath ./paragon/core.scss --themesPath ./paragon/build/themes --source

clean:
	rm -rf dist paragon/build
