#!/bin/bash

cp -f java-app/target/*.jar jenkins/build/

cd jenkins/build/ && docker-compose -f docker-compose.yml build --no-cache




