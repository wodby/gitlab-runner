# Gitlab Runner Docker Container Image 

[![Build Status](https://travis-ci.org/wodby/gitlab-runner.svg?branch=master)](https://travis-ci.org/wodby/gitlab-runner)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/gitlab-runner.svg)](https://hub.docker.com/r/wodby/gitlab-runner)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/gitlab-runner.svg)](https://hub.docker.com/r/wodby/gitlab-runner)
[![Wodby Slack](http://slack.wodby.com/badge.svg)](http://slack.wodby.com)

## Overview

This gitlab runner image registers on CI server automatically when `CI_SERVER_URL` and `REGISTRATION_TOKEN` specified.

## Docker Images

* All images are based on Alpine Linux
* Base image: [wodby/ruby](https://github.com/wodby/ruby)
* [Travis CI builds](https://travis-ci.org/wodby/gitlab-runner) 
* [Docker Hub](https://hub.docker.com/r/wodby/gitlab-runner)

For better reliability we release images with stability tags (`wodby/gitlab-runner:10.1-X.X.X`) which correspond to git tags. We **strongly recommend** using images only with stability tags. Below listed basic tags:

| Image tag (Dockerfile)                                                             | Gitlab Runner |
| ---------------------------------------------------------------------------------- | ------------- |
| [10, 10.1 (latest)](https://github.com/wodby/gitlab-runner/tree/master/Dockerfile) | 10.1.0        |

## Environment Variables

| Variable           | Default Value          | Description |
| ------------------ | ---------------------- | ----------- |
| RUNNER_EXECUTOR    | docker                 |             |
| DOCKER_IMAGE       | wodby/alpine:3.6-1.0.0 |             |
| CI_SERVER_URL      |                        |             |
| REGISTRATION_TOKEN |                        |             |

Run `gitlab-runner register --help` to see the full list of environment variables

## Deployment

Deploy GitLab Runner to your own server via [![Wodby](https://www.google.com/s2/favicons?domain=wodby.com) Wodby](https://wodby.com).
