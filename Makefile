all: build run

build:
	pip install pipenv
	pipenv --three
	pipenv install --dev

run:
	pipenv run spark-submit --driver-class-path lib/postgresql-42.2.8.jar --jars lib/postgresql-42.2.8.jar etl.py