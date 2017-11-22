#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    options="--debug"
    set -x
fi

touch /etc/gitlab-runner/config.toml

if [[ -n "${CI_SERVER_URL}" && -n "${REGISTRATION_TOKEN}" ]]; then
    gitlab-runner register ${options}
fi

exec /entrypoint "${@}"
