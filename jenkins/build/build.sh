#!/bin/bash

cp -f java-app/target/*.jar jenkins/build/

export BUILD_TAG=$1
cd jenkins/build/ && docker-compose -f docker-compose.yml build --no-cache




