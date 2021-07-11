#!/bin/bash

echo "******************************"
echo "****Building jar**************"
echo "******************************"

WORKSPACE=/home/ec2-user/jenkins_home/jenkins_home/workspace/pipeline-maven-project-demo

docker run --rm  -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:latest "$@"
