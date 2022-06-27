#!/bin/bash

# deploy.sh copy
# cp /home/ec2-user/app/step3/public-book-webservice/script/deploy.sh /home/ec2-user/app/step3/deploy.sh

REPOSITORY=/home/ec2-user/app/step3
PROJECT_NAME=public-book-webservice
SCRIPT_DIR=script

echo "> Start $REPOSITORY/$PROJECT_NAME/$SCRIPT_DIR/stop.sh"
sh $REPOSITORY/$PROJECT_NAME/$SCRIPT_DIR/stop.sh
echo "> Start $REPOSITORY/$PROJECT_NAME/$SCRIPT_DIR/start.sh"
sh $REPOSITORY/$PROJECT_NAME/$SCRIPT_DIR/start.sh
echo "> Start $REPOSITORY/$PROJECT_NAME/$SCRIPT_DIR/health.sh"
sh $REPOSITORY/$PROJECT_NAME/$SCRIPT_DIR/health.sh