#!/bin/bash

# deploy.sh copy
# cp /home/ec2-user/app/step3/public-book-webservice/script/deploy.sh /home/ec2-user/app/step3/deploy.sh

echo "> Start ./stop.sh"
sh ./stop.sh
echo "> Start ./start.sh"
sh ./start.sh
echo "> Start ./health.sh"
sh ./health.sh