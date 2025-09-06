```make
APP=flask-docker-ci
IMAGE=ghcr.io/dantescientia/$(APP):latest

run:
	python -m flask_docker_ci.app

test:
	PYTHONPATH=. pytest -q

lint:
	flake8 .

docker-build:
	docker build -t $(IMAGE) .

docker-push: docker-build
	docker push $(IMAGE)
