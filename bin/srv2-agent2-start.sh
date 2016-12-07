#!/usr/bin/env bash

docker run -e SERVER_URL=teamcity.brandymint.ru \
  --name srv2-agent2 \
  --restart=always \
  -v /opt/teamcity/conf/srv2-agent2:/data/teamcity_agent/conf \
  -v /var/run/postgresql/:/var/run/postgresql/ \
  -e AGENT_NAME=srv2-agent2 \
  dapi/teamcity-agent
