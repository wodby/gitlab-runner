ARG GITLAB_RUNNER_VER

FROM gitlab/gitlab-runner:alpine-v${GITLAB_RUNNER_VER}

ENV GITLAB_RUNNER_VER="${GITLAB_RUNNER_VER}" \
    GOTPL_URL="https://github.com/wodby/gotpl/releases/download/0.1.5/gotpl-alpine-linux-amd64-0.1.5.tar.gz"

RUN wget -qO- "${GOTPL_URL}" | tar xz -C /usr/local/bin

COPY docker-entrypoint.sh /
COPY config.toml.tpl /etc/gotpl/

ENTRYPOINT ["/usr/bin/dumb-init", "/docker-entrypoint.sh"]
CMD ["run", "--user=gitlab-runner", "--working-directory=/home/gitlab-runner"]
