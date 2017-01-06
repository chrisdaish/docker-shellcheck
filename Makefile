_: build tag push

IMAGE := shellcheck

build:
	docker build --no-cache=false -t ${IMAGE} .

tag:
	docker tag ${IMAGE}:latest mangoweb/${IMAGE}:latest

push:
	docker push mangoweb/${IMAGE}:latest


.PHONY: build tag push
