#!/usr/bin/env bash

docker run -d \
  -e SERVER_URL=teamcity.bang8.ru \
  --name srv1-agent2 \
  --add-host teamcity.bang8.ru:213.183.51.215 \
  --restart=always \
  -v /opt/teamcity/conf/srvl-agent2:/data/teamcity_agent/conf \
  -v /var/run/postgresql/:/var/run/postgresql/ \
  -e AGENT_NAME=srv1-agent2 \
  brandymint/teamcity-agent
