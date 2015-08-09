default:
	mkdir -p build
	browserify src/main.js > build/webvr-polyfill.js
	cp build/webvr-polyfill.js ../webvr-boilerplate/js/deps

watch:
	watchify src/main.js -o build/webvr-polyfill.js

clean:
	rm build/webvr-polyfill.js
	rmdir build
