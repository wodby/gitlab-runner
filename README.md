# Gitlab Runner Docker Container Image 

[![Build Status](https://travis-ci.org/wodby/gitlab-runner.svg?branch=master)](https://travis-ci.org/wodby/gitlab-runner)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/gitlab-runner.svg)](https://hub.docker.com/r/wodby/gitlab-runner)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/gitlab-runner.svg)](https://hub.docker.com/r/wodby/gitlab-runner)
[![Docker Layers](https://images.microbadger.com/badges/image/wodby/gitlab-runner.svg)](https://microbadger.com/images/wodby/gitlab-runner)

## Overview

This gitlab runner image registers on CI server automatically when `CI_SERVER_URL` and `REGISTRATION_TOKEN` specified.

## Docker Images

!!! For better reliability we release images with stability tags (`wodby/gitlab-runner:10-X.X.X`) which correspond to [git tags](https://github.com/wodby/gitlab-runner/releases). We **STRONGLY RECOMMEND** using images only with stability tags. 

Overview:

* All images are based on Alpine Linux
* Base image: [gitlab/gitlab-runner](https://hub.docker.com/r/gitlab/gitlab-runner/)
* [Travis CI builds](https://travis-ci.org/wodby/gitlab-runner) 
* [Docker Hub](https://hub.docker.com/r/wodby/gitlab-runner)

Supported tags and respective `Dockerfile` links:

* `10`, `10.4`, `latest` [_(Dockerfile)_](ttps://github.com/wodby/gitlab-runner/tree/master/Dockerfile)

## Environment Variables

| Variable             | Default Value            | Description |
| -------------------- | ------------------------ | ----------- |
| `RUNNER_EXECUTOR`    | `docker`                 |             |
| `DOCKER_IMAGE`       | `wodby/alpine:3.7-1.2.0` |             |
| `CI_SERVER_URL`      |                          |             |
| `REGISTRATION_TOKEN` |                          |             |

Run `gitlab-runner register --help` to see the full list of environment variables

## Deployment

Deploy GitLab runner to your own server via [![Wodby](https://www.google.com/s2/favicons?domain=wodby.com) Wodby](https://wodby.com).
