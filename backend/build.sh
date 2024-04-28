#!/bin/bash

TAG=$(git log -1 --pretty=%H)

REPOSITORY=docker_user/docker_repo

docker build --tag $REPOSITORY:$TAG .

docker push $REPOSITORY:$TAG
