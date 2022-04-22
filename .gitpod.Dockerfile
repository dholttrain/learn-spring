FROM gitpod/workspace-full

LABEL version="0.1.0"
LABEL com.vfrsoft.containers.image.authors="dholtdev@gmail.com"

RUN mkdir -p /app
COPY scripts /app/
WORKDIR /app/scripts
RUN chmod +x docker_setup.sh
RUN ./docker_setup.sh
