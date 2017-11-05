TEMPDIR := $(shell mktemp -d)
PROJECTDIR := $(shell pwd)
IS_CI = $(shell echo $$CI)

.PHONY: clean
clean:
	rm -rf build

build: clean
	mkdir build

build/lambda_deployment.zip: src
	cd build && zip -r lambda_deployment.zip .

.PHONY: src
src:
	build/handler.py
