#!/usr/bin/env bash

docker run -d \
  -e SERVER_URL=teamcity.brandymint.ru \
  --name srv1-agent2 \
  --add-host teamcity.brandymint.ru:95.216.2.125 \
  --restart=always \
  -v /opt/teamcity/conf/srv1-agent2:/data/teamcity_agent/conf \
  -v /var/run/postgresql/:/var/run/postgresql/ \
  -e AGENT_NAME=srv1-agent2 \
  brandymint/teamcity-agent
