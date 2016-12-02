#!/usr/bin/env bash

docker run -it -e SERVER_URL=teamcity.brandymint.ru \
  --name srv1-agent1 \
  --restart=always \
  -v /opt/teamcity/conf/srv1-agent1:/data/teamcity_agent/conf \
  -v /var/run/postgresql/:/var/run/postgresql/ \
  -e AGENT_NAME=srv1-agent1 \
  dapi/teamcity-agent
