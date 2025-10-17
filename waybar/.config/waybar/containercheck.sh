#!/bin/bash

CONTAINER="mad_serv"

if docker ps --format "{{.Names}}" | grep -q "$CONTAINER_NAME"; then
  echo '{"text": "  :mad_serv", "alt": "running"}'
else
  echo '{"text": "", "alt": "stopped"}'
fi
