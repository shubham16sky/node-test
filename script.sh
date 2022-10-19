#!/bin/bash

container=`sudo docker ps | awk '{print $NF}' | awk '(NR>1)' | grep -E "nodeEnv"`


if [ ! -z "$container" ]
then
        sudo docker stop nodeEnv && sudo docker rm nodeEnv  && sudo docker run --name "nodeEnv" --detach -p 5555:5555  node-env

else
        sudo docker run --name "nodeEnv" --detach  -p 5555:5555  node-env
fi
