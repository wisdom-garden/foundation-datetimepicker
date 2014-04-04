deps:
	npm install -d

build:
	mkdir -p build/js
	mkdir -p build/css
	mkdir -p build/images
	cp src/images/* build/images
	./node_modules/.bin/uglifyjs --comments \
		-o build/js/bootstrap-datetimepicker.min.js \
	       	src/js/bootstrap-datetimepicker.js
	./node_modules/.bin/lessc \
	       	src/less/bootstrap-datetimepicker.less \
	       	build/css/bootstrap-datetimepicker.css
	./node_modules/.bin/lessc -x \
	       	src/less/bootstrap-datetimepicker.less \
	       	build/css/bootstrap-datetimepicker.min.css

clean:
	rm -rf build

.PHONY: deps build clean test
