
.PHONY: build
build:
	rm -rf build
	mkdir build
	cp handler.py $@
	cd build && zip -r lambda_deployment.zip .

build/handler.py:
	cp handler.py $@

build/lambda_deployment.zip: src
	cd build && zip -r lambda_deployment.zip .
