#!/bin/bash

echo "Hello, World!"

param1=$1

if [ "$param1" == "run-back" ]; then
    echo "Rodando backend'"

    cd /home/linux/dados/workspace/syn4tdf

    ./gradlew bootRun -Pargs="--spring.profiles.active=evolucao --accounts.mock.usersFilePath=/home/linux/dados/workspace/syn4tdf/tdf/tdf-runtime/src/main/resources/user-data.json"
fi

