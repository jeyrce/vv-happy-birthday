
tag=latest

commitId=$(shell git rev-parse --short HEAD)

.phony: all
all: image

.phony: image
image:
	docker buildx build -t jeyrce/vv-happy-birthday:${tag} -t jeyrce/vv-happy-birthday:latest \
		--platform linux/amd64,linux/arm64/v8,linux/386 \
		--build-arg commitId=${commitId} \
		--pull \
		--push \
		.

