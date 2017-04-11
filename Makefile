deps:
	npm install -d

build:
	mkdir -p build/js
	mkdir -p build/css
	mkdir -p build/images
	cp src/images/* build/images
	./node_modules/.bin/lessc \
	       	src/less/bootstrap-datetimepicker.less \
	       	build/css/bootstrap-datetimepicker.css

clean:
	rm -rf build

.PHONY: deps build clean test
