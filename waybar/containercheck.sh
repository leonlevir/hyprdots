#!/bin/bash

CONTAINER="mad_serv"

if docker ps --format '{{.Names}}' | grep -q "^${CONTAINER}$"; then
    echo '{"text":"  : mad_serv","class":"running"}'
else
    echo '{"text":""}'
fi



