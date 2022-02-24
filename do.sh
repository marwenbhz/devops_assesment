#!/bin/bash

APP_NAME=${APP_NAME:-horme}
PROJECT_ID=${PROJECT_ID:-registry.digitalocean.com}


start () {
  export ENV=${ENV:-'local'}
  npm start
}

# ./do.sh build_push [project_id]
build_push () {
  USERNAME =${USERNAME:-$1}
  PASSWORD=${PASSWORD:-$2}
  TAG=${TAG:-latest}

  docker build -t ${PROJECT_ID}/${APP_NAME}:${TAG} --no-cache --file=docker/app/Dockerfile .
  docker login ${PROJECT_ID} -u ${USERNAME} -p ${PASSWORD}
  docker -- push ${PROJECT_ID}/${APP_NAME}:${TAG}
}


$*