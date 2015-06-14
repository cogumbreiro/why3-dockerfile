DOCKER = docker
IMAGE = why3


build:
	$(DOCKER) build -t $(IMAGE) .

run:
	$(DOCKER) run -it --rm $(IMAGE)
