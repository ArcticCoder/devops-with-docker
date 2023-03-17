#!/bin/sh
git clone https://github.com/$1.git ./repo
cd ./repo
docker build . -t $2
docker login -u $DOCKER_USER -p $DOCKER_PWD
docker push $2
