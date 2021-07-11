#!/bin/bash



echo "***********************"
echo "****pushing image******"
echo "***********************"

IMAGE="maven-project"

echo "*******login***********"
docker login -u sirinavya -p $PASS

docker tag $IMAGE:$BUILD_TAG sirinavya/$IMAGE:$BUILD_TAG

docker push sirinavya/$IMAGE:$BUILD_TAG
