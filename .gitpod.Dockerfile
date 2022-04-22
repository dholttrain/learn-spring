FROM gitpod/workspace-full

LABEL version="0.1.0"
LABEL com.vfrsoft.containers.image.authors="dholtdev@gmail.com"

ENV PROJECT_DIR /workspace/learn-spring

SHELL ["/usr/bin/env bash", "-c"]

RUN "source ${PROJECT_DIR}=scripts/docker_setup.sh"
