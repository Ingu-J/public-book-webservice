#!/usr/bin/env bash

ABSPATH=$(readlink -f $0)
ABSDIR=$(dirname $ABSPATH)
source ${ABSDIR}/profile.sh

REPOSITORY=/home/ec2-user/app/step3
PROJECT_NAME=public-book-webservice

cd $REPOSITORY/$PROJECT_NAME/

echo "> Git Pull"

git pull

echo "> Git Ignore Application Properties 파일 복사"

cp /home/ec2-user/app/application-properties/*.properties $REPOSITORY/$PROJECT_NAME/src/main/resources

echo "> 프로젝트 Build 시작"

./gradlew build

echo "> step3 디렉토리로 이동"

cd $REPOSITORY

echo "> Build 파일 복사"

cp $REPOSITORY/$PROJECT_NAME/build/libs/*.jar $REPOSITORY/

echo "> 새 애플리케이션 배포"

JAR_NAME=$(ls -tr $REPOSITORY/ | grep jar | tail -n 1)

echo "> JAR Name: $JAR_NAME"

echo "> JAR Name 에 실행권한 추가"

chmod +x $JAR_NAME

echo "> JAR Name 실행"

IDLE_PROFILE=${find_idle_profile}

echo "> JAR Name 를 profile=$IDLE_PROFILE 로 실행합니다."

nohup java -jar -Dspring.profiles.active=$IDLE_PROFILE $REPOSITORY/$JAR_NAME 2>&1 &
