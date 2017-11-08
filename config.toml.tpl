concurrent = 1
check_interval = 0

[[runners]]
  name = "{{ getenv "GITLAB_RUNNER_NAME" "Runner" }}"
  url = "{{ getenv "GITLAB_RUNNER_URL" }}"
  token = "{{ getenv "GITLAB_RUNNER_TOKEN" }}"
  executor = "{{ getenv "GITLAB_RUNNER_EXECUTOR" "docker" }}"
  [runners.docker]
    tls_verify = {{ getenv "GITLAB_RUNNER_DOCKER_TLS_VERIFY" "false" }}
    image = "{{ getenv "GITLAB_RUNNER_DOCKER_IMAGE" "wodby/alpine:3.6-1.0.0" }}"
    disable_cache = {{ getenv "GITLAB_RUNNER_DOCKER_DISABLE_CACHE" "false" }}
    volumes = {{ getenv "GITLAB_RUNNER_DOCKER_VOLUMES" "[\"/cache\"]" }}
    shm_size = {{ getenv "GITLAB_RUNNER_DOCKER_SHM_SIZE" "0" }}
    privileged = {{ getenv "GITLAB_RUNNER_DOCKER_PRIVILEGED" "true" }}
  [runners.cache]