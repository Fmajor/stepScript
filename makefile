.PHONY: install
all: install
install:
	python3 setup.py build
	python3 setup.py develop
