#!/bin/bash

# deploy.sh copy
# cp /home/ec2-user/app/step3/public-book-webservice/script/deploy.sh /home/ec2-user/app/step3/deploy.sh

REPOSITORY=/home/ec2-user/app/step3
PROJECT_NAME=public-book-webservice

echo "> Start $REPOSITORY/$PROJECT_NAME/stop.sh"
sh $REPOSITORY/$PROJECT_NAME/stop.sh
echo "> Start $REPOSITORY/$PROJECT_NAME/start.sh"
sh $REPOSITORY/$PROJECT_NAME/start.sh
echo "> Start $REPOSITORY/$PROJECT_NAME/health.sh"
sh $REPOSITORY/$PROJECT_NAME/health.sh