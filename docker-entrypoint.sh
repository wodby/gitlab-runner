#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

if [[ -n "${CI_SERVER_URL}" && -n "${CI_SERVER_TOKEN}" ]]; then
    gitlab-runner register --non-interactive
fi

exec /entrypoint "${@}"
