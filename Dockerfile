ARG GITLAB_RUNNER_VER

FROM gitlab/gitlab-runner:alpine-v${GITLAB_RUNNER_VER}

ENV GITLAB_RUNNER_VER="${GITLAB_RUNNER_VER}" \
    RUNNER_EXECUTOR="docker" \
    REGISTER_NON_INTERACTIVE=true \
    DOCKER_IMAGE="wodby/alpine:3.6-1.0.0"

COPY docker-entrypoint.sh /

ENTRYPOINT ["/usr/bin/dumb-init", "/docker-entrypoint.sh"]
CMD ["run", "--user=gitlab-runner", "--working-directory=/home/gitlab-runner"]
