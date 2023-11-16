PROJECT = "MyMLProject"
AUTHOR = "Jannatul Ferdoush"
RELEASE = "0.0.0.1"

.SILENT:
.ONESHELL:

install:
	pip install -r requirements.txt

docs:
	echo "Generating documentation..." &&\
	cd docs &&\
	sphinx-quickstart -q -p ${PROJECT} -a ${AUTHOR} -r ${RELEASE} --ext-viewcode --ext-todo --ext-autodoc

build:
	python setup.py sdist bdist_wheel

publish: build
	twine upload dist/*

.PHONY: docs build
