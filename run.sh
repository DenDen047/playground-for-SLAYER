#!/bin/bash

CURRENT_PATH=$(pwd)
IMAGE_NAME="denden047/slayer_env:latest"

docker build -t ${IMAGE_NAME} ./docker && \
docker rmi $(docker images -f "dangling=true" -q) && \
docker run -it --rm \
    --gpus '"device=0"' \
    -v ${CURRENT_PATH}/src/:/src/ \
    -v ${CURRENT_PATH}/data/:/data/ \
    -w /src \
    ${IMAGE_NAME} \
    /bin/bash