#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

gotpl "/etc/gotpl/config.toml.tpl" > "/etc/gitlab-runner/config.toml"

exec /entrypoint "${@}"
