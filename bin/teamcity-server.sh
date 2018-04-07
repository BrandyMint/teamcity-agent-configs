#!/usr/bin/env bash

docker run -it -d --name teamcity-server-instance \
    --restart=always \
    -v /opt/teamcity/.server/data:/data/teamcity_server/datadir \
    -v /opt/teamcity/.server/logs:/opt/teamcity/logs \
    -p 8111:8111 \
    jetbrains/teamcity-server
