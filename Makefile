-include env_make

GITLAB_RUNNER_VER ?= 10.4.0
GITLAB_RUNNER_MINOR_VER ?= $(shell echo "${GITLAB_RUNNER_VER}" | grep -oE '^[0-9]+\.[0-9]+')

TAG ?= $(GITLAB_RUNNER_VER)

REPO = wodby/gitlab-runner
NAME = gitlab-runner-$(GITLAB_RUNNER_VER)

.PHONY: build test push shell run start stop logs clean release

default: build

build:
	docker build -t $(REPO):$(TAG) --build-arg GITLAB_RUNNER_VER=$(GITLAB_RUNNER_VER) ./

test:
	echo "OK"

push:
	docker push $(REPO):$(TAG)

shell:
	docker run --rm --name $(NAME) -i -t $(PORTS) $(VOLUMES) $(ENV) $(REPO):$(TAG) /bin/bash

run:
	docker run --rm --name $(NAME) -e DEBUG=1 $(PORTS) $(VOLUMES) $(ENV) $(REPO):$(TAG) $(CMD)

start:
	docker run -d --name $(NAME) $(PORTS) $(VOLUMES) $(ENV) $(REPO):$(TAG)

stop:
	docker stop $(NAME)

logs:
	docker logs $(NAME)

clean:
	-docker rm -f $(NAME)

release: build push
