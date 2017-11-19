
.PHONY: build
build:
	rm -rf build
	mkdir build
	cp handler.py $@
	cd build && zip -r lambda_deployment.zip .
