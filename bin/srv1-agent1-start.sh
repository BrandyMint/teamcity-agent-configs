#!/usr/bin/env bash

docker run -d \
  -e SERVER_URL=teamcity.brandymint.ru \
  --name srv1-agent1-v2 \
  --restart=always \
  -v /opt/teamcity/conf/srv1-agent1:/data/teamcity_agent/conf \
  -v /var/run/postgresql/:/var/run/postgresql/ \
  -e AGENT_NAME=srv1-agent1-v2 \
  brandymint/teamcity-agent
